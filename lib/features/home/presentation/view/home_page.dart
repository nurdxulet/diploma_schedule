// ignore_for_file: deprecated_member_use

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:schedule/core/extension/extensions.dart';
import 'package:schedule/core/get_it/injection_container.dart';
import 'package:schedule/core/resources/assets.gen.dart';
import 'package:schedule/core/resources/resources.dart';
import 'package:schedule/features/home/bloc/schedule_bloc.dart';
import 'package:schedule/features/home/presentation/widgets/custom_calendar_widget.dart';
import 'package:schedule/features/home/presentation/widgets/subject_schedule_widget.dart';

class HomePage extends StatefulWidget with AutoRouteWrapper {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<ScheduleBloc>(
      create: (context) => ScheduleBloc(context.repository.scheduleRepository),
      child: this,
    );
  }
}

class _HomePageState extends State<HomePage> {
  String id = '3f24b194-6378-46f8-85e6-138a20e1d041';
  bool sortFromTop = true;

  @override
  void initState() {
    BlocProvider.of<ScheduleBloc>(context).add(LoadSchedule(id: id));
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
                              DateFormat('EEE').format(DateTime.now()),
                              style: AppTextStyles.m12w600Grey,
                            ),
                            Text(
                              DateFormat('MMM yyy').format(DateTime.now()),
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
                            onTap: () {},
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
                    const CustomCalendarWidget(),
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
                child: Row(
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
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              sliver: BlocBuilder<ScheduleBloc, ScheduleState>(
                builder: (context, state) {
                  if (state is ScheduleLoading) {
                    return const SliverToBoxAdapter(
                      child: Center(
                        child: CircularProgressIndicator(
                          color: Colors.blue,
                        ),
                      ),
                    );
                  }
                  if (state is ScheduleSucces) {
                    return SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          return SubjectScheduleWidget(
                            widgetColor: AppColors.kSubjectOrange,
                            subjectName: state.scheduleListList[index]?.subjectName ?? '',
                            lessonType: state.scheduleListList[index]?.sessionType?.toLowerCase().capitalize(),
                            lessonLocation: state.scheduleListList[index]?.room,
                            lessonStartTime:
                                '${state.scheduleListList[index]?.startTime?.hour}:${state.scheduleListList[index]?.startTime?.minute}',
                            lessonEndTime:
                                '${state.scheduleListList[index]?.endTime?.hour}:${state.scheduleListList[index]?.endTime?.minute}',
                            lessonBreakStartTime:
                                '${state.scheduleListList[index]?.startTime?.add(const Duration(minutes: 50)).hour}:${state.scheduleListList[index]?.startTime?.add(const Duration(minutes: 50)).minute}',
                            lessonBreakEndTime:
                                '${state.scheduleListList[index]?.startTime?.add(const Duration(minutes: 60)).hour}:${state.scheduleListList[index]?.startTime?.add(const Duration(minutes: 60)).minute}',
                          );
                        },
                        childCount: state.scheduleListList.length,
                        semanticIndexOffset: 2,
                      ),
                    );
                  }
                  if (state is ScheduleFailure) {
                    return const SliverToBoxAdapter(child: Text("Failure"));
                  }
                  return const SliverToBoxAdapter(
                    child: SizedBox(),
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

class ScheduleSubjectMock {
  final String? subjectName;
  final String? lessonType;
  final String? lessonLocation;
  final String? lessonStartTime;
  final String? lessonEndTime;
  final String? lessonBreakStartTime;
  final String? lessonBreakEndTime;

  ScheduleSubjectMock(
    this.subjectName,
    this.lessonType,
    this.lessonLocation,
    this.lessonStartTime,
    this.lessonEndTime,
    this.lessonBreakStartTime,
    this.lessonBreakEndTime,
  );
}



                    // ListView.builder(
                    //   shrinkWrap: true,
                    //   physics: const NeverScrollableScrollPhysics(),
                    //   itemCount: 3,
                    //   itemBuilder: (BuildContext context, int index) {
                    //     return const SubjectScheduleWidget(
                    //       widgetColor: AppColors.kSubjectOrange,
                    //       subjectName: 'Project Research',
                    //       lessonType: 'Laboratory Class',
                    //       lessonLocation: '903',
                    //       lessonStartTime: '14:00 am',
                    //       lessonEndTime: '16:50 am',
                    //       lessonBreakStartTime: '14:50 am',
                    //       lessonBreakEndTime: '15:00 am',
                    //     );
                    //   },),
                    // children: const [
                    // SubjectScheduleWidget(
                    //   widgetColor: AppColors.kSubjectOrange,
                    //   subjectName: 'Project Research',
                    //   lessonType: 'Laboratory Class',
                    //   lessonLocation: '903',
                    //   lessonStartTime: '14:00 am',
                    //   lessonEndTime: '16:50 am',
                    //   lessonBreakStartTime: '14:50 am',
                    //   lessonBreakEndTime: '15:00 am',
                    // ),
                    // SubjectScheduleWidget(
                    //   widgetColor: AppColors.kSubjectRed,
                    //   subjectName: 'Enterprice Architecture',
                    //   lessonType: 'Lecture',
                    //   lessonLocation: '304B',
                    //   lessonStartTime: '11:00 am',
                    //   lessonEndTime: '12:50 am',
                    //   lessonBreakStartTime: '11:50 am',
                    //   lessonBreakEndTime: '12:00 am',
                    // ),
                    // SubjectScheduleWidget(
                    //   widgetColor: AppColors.kSubjectGreen,
                    //   subjectName: 'Java Client-Server Applications',
                    //   lessonType: 'Laboratory Class',
                    //   lessonLocation: '903',
                    //   lessonStartTime: '14:00 am',
                    //   lessonEndTime: '16:50 am',
                    //   lessonBreakStartTime: '14:50 am',
                    //   lessonBreakEndTime: '15:00 am',
                    // ),