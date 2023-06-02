// ignore_for_file: deprecated_member_use

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:schedule/core/extension/extensions.dart';
import 'package:schedule/core/resources/assets.gen.dart';
import 'package:schedule/core/resources/resources.dart';
import 'package:schedule/features/app/widgets/custom/custom_snackbars.dart';
import 'package:schedule/features/home/data/models/schedule_dto.dart';
import 'package:schedule/features/home/presentation/widgets/custom_calendar_widget.dart';
import 'package:schedule/features/home/presentation/widgets/subject_schedule_widget.dart';
import 'package:schedule/features/search/bloc/schedule_cubit.dart';

class SchedulePage extends StatefulWidget with AutoRouteWrapper {
  final String id;
  final String searchType;
  const SchedulePage({super.key, required this.id, required this.searchType});

  @override
  State<SchedulePage> createState() => _SchedulePageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<ScheduleCubit>(
      create: (context) => ScheduleCubit(context.repository.searchRepository, context.repository.onboardingRepository),
      child: this,
    );
  }
}

class _SchedulePageState extends State<SchedulePage> {
  bool sortFromTop = true;
  bool? isSelected = false;
  bool? isDisabled = false;
  DateTime selectedDate = DateTime.now();

  @override
  void initState() {
    BlocProvider.of<ScheduleCubit>(context).getSchedules(widget.id, widget.searchType);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Row(
                      children: [
                        SizedBox(
                          height: 30,
                          width: 30,
                          child: InkWell(
                            onTap: () => context.router.pop(),
                            child: SvgPicture.asset(
                              Assets.icons.icBackArrow.path,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          context.localized.schedule,
                          style: AppTextStyles.m24w600,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          DateTime.now().day.toString(),
                          style: AppTextStyles.m36w600,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              DateFormat(
                                'EEEE',
                                context.currentLocale.localeCode,
                              ).format(DateTime.now()),
                              style: AppTextStyles.m12w600Grey,
                            ),
                            Text(
                              DateFormat(
                                'MMMM, yyy',
                                context.currentLocale.localeCode,
                              ).format(DateTime.now()),
                              style: AppTextStyles.m12w600Grey,
                            ),
                          ],
                        ),
                        const Spacer(),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              8,
                            ),
                            color: AppColors.kPrimary.withOpacity(0.16),
                          ),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(
                              8,
                            ),
                            onTap: () {
                              setState(() {
                                selectedDate = DateTime.now();
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                context.localized.today,
                                style: AppTextStyles.m18w500.copyWith(color: AppColors.kPrimary),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    CustomCalendarWidget(
                      selectedDay: selectedDate,
                      onSelected: (dateTime) {
                        setState(() {
                          selectedDate = dateTime;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Divider(
                  height: 0,
                  thickness: 2,
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 10),
              sliver: SliverToBoxAdapter(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          context.localized.subject,
                          style: AppTextStyles.m12w600Grey,
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {
                            setState(() {
                              sortFromTop = !sortFromTop;
                            });
                            BlocProvider.of<ScheduleCubit>(context).sortList(isFromTop: sortFromTop);
                          },
                          child: sortFromTop
                              ? SvgPicture.asset(
                                  Assets.icons.icSortFromTop.path,
                                  color: Colors.grey,
                                )
                              : SvgPicture.asset(
                                  Assets.icons.icSortFromBottom.path,
                                  color: Colors.grey,
                                ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              sliver: BlocConsumer<ScheduleCubit, ScheduleState>(
                listener: (context, state) {
                  state.whenOrNull(
                    errorState: (message) => buildErrorCustomSnackBar(context, message),
                  );
                },
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => const SliverToBoxAdapter(
                      child: SizedBox(
                        child: Text(
                          'THERE IS NO DATA YET',
                          style: AppTextStyles.m20w500,
                        ),
                      ),
                    ),
                    loadingState: () {
                      return const SliverToBoxAdapter(
                        child: Center(
                          child: CircularProgressIndicator(
                            color: Colors.blue,
                          ),
                        ),
                      );
                    },
                    loadedState: (schedulesBack) {
                      final List<ScheduleDTO> scheduleByWeekDay = [];
                      scheduleByWeekDay.addAll(
                        schedulesBack
                            .where((element) => element.week == DateFormat('EEEE').format(selectedDate).toUpperCase()),
                      );
                      if (scheduleByWeekDay.isNotEmpty) {
                        return SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (BuildContext context, int index) {
                              return SubjectScheduleWidget(
                                // schedule: schedulesBack[index],
                                schedule: scheduleByWeekDay[index],
                              );
                            },
                            childCount: scheduleByWeekDay.length,
                          ),
                        );
                      } else {
                        return SliverToBoxAdapter(
                          child: Center(
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 25,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Image.asset(
                                    Assets.images.searchingGuys.path,
                                    height: 250,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                const SizedBox(
                                  height: 25,
                                ),
                                const Text(
                                  'NO SCHEDULES FOUND',
                                  style: AppTextStyles.m26w500Grey2,
                                ),
                              ],
                            ),
                          ),
                        );
                      }
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
