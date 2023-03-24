// ignore_for_file: deprecated_member_use

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:schedule/core/extension/extensions.dart';
import 'package:schedule/core/resources/assets.gen.dart';
import 'package:schedule/core/resources/resources.dart';
import 'package:schedule/features/app/widgets/custom/custom_buttons/custom_button.dart';
import 'package:schedule/features/home/widgets/custom_calendar_widget.dart';
import 'package:schedule/features/home/widgets/subject_schedule_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool sortFromTop = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                            color: AppColors.kMainOrange.withOpacity(0.16),
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
                                style: AppTextStyles.m18w500.copyWith(color: AppColors.kMainOrange),
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
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Divider(
                  height: 0,
                  thickness: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        // SizedBox(
                        //   width: 40,
                        //   child: Text(
                        //     context.localized.time,
                        //     style: AppTextStyles.m12w600Grey,
                        //   ),
                        // ),
                        // const SizedBox(
                        //   width: 10,
                        // ),
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
                    const SizedBox(
                      height: 10,
                    ),
                    const SubjectScheduleWidget(
                      widgetColor: AppColors.kSubjectOrange,
                      subjectName: 'Project Research',
                      lessonType: 'Laboratory Class',
                      lessonLocation: '903',
                      lessonStartTime: '14:00 am',
                      lessonEndTime: '16:50 am',
                      lessonBreakStartTime: '14:50 am',
                      lessonBreakEndTime: '15:00 am',
                    ),
                    const SubjectScheduleWidget(
                      widgetColor: AppColors.kSubjectRed,
                      subjectName: 'Enterprice Architecture',
                      lessonType: 'Lecture',
                      lessonLocation: '304B',
                      lessonStartTime: '11:00 am',
                      lessonEndTime: '12:50 am',
                      lessonBreakStartTime: '11:50 am',
                      lessonBreakEndTime: '12:00 am',
                    ),
                    const SubjectScheduleWidget(
                      widgetColor: AppColors.kSubjectGreen,
                      subjectName: 'Java Client-Server Applications',
                      lessonType: 'Laboratory Class',
                      lessonLocation: '903',
                      lessonStartTime: '14:00 am',
                      lessonEndTime: '16:50 am',
                      lessonBreakStartTime: '14:50 am',
                      lessonBreakEndTime: '15:00 am',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
