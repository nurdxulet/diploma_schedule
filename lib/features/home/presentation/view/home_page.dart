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
import 'package:schedule/features/home/bloc/my_schedule_cubit.dart';
import 'package:schedule/features/home/bloc/schedule_cubit.dart';
import 'package:schedule/features/home/data/models/schedule_dto.dart';
import 'package:schedule/features/home/presentation/widgets/custom_calendar_widget.dart';
import 'package:schedule/features/home/presentation/widgets/subject_schedule_widget.dart';

class HomePage extends StatefulWidget with AutoRouteWrapper {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<MyScheduleCubit>(
      create: (context) => MyScheduleCubit(context.repository.homeRepository, context.repository.onboardingRepository),
      child: this,
    );
  }
}

class _HomePageState extends State<HomePage> {
  bool sortFromTop = true;
  bool? isSelected = false;
  bool? isDisabled = false;
  DateTime selectedDate = DateTime.now();

  @override
  void initState() {
    BlocProvider.of<MyScheduleCubit>(context).getMySchedules('GROUP');
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
                    Text(
                      context.localized.schedule,
                      style: AppTextStyles.m24w600,
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
                            BlocProvider.of<MyScheduleCubit>(context).sortList(isFromTop: sortFromTop);
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
              sliver: BlocConsumer<MyScheduleCubit, MyScheduleState>(
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
                                const Text(
                                  'NO SCHEDULES FOUND',
                                  style: AppTextStyles.m26w500Grey2,
                                ),
                                const SizedBox(
                                  height: 25,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                                  child: SvgPicture.asset(
                                    Assets.icons.noSchedule.path,
                                    height: 200,
                                  ),
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
