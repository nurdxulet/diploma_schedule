// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:schedule/core/extension/src/build_context.dart';
import 'package:schedule/core/resources/assets.gen.dart';
import 'package:schedule/core/resources/resources.dart';
import 'package:schedule/features/home/data/models/schedule_model_dto.dart';

class SubjectScheduleWidget extends StatelessWidget {
  final ScheduleDTO schedule;
  final Color? widgetColor;
  const SubjectScheduleWidget({
    super.key,
    this.widgetColor = AppColors.kPrimary,
    required this.schedule,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  12,
                ),
                color: Colors.grey.withOpacity(0.12),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 16.0, 16, 16),
                child: Row(
                  children: [
                    Container(
                      width: 7,
                      height: 130,
                      decoration: BoxDecoration(color: widgetColor, borderRadius: BorderRadius.circular(50)),
                    ),
                    // ignore: prefer_const_constructors
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                schedule.sessionType ?? 'unknown',
                                style: AppTextStyles.m12w600.copyWith(color: widgetColor),
                              ),
                              const Spacer(),
                              SvgPicture.asset(
                                Assets.icons.icLocation.path,
                                height: 12,
                                color: widgetColor,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                schedule.room ?? 'unknown',
                                style: AppTextStyles.m12w600.copyWith(color: widgetColor),
                              ),
                            ],
                          ),
                          Text(
                            schedule.subjectName ?? 'No subject name',
                            // 'Enterprice Architecture',
                            style: AppTextStyles.m24w700,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${DateFormat('hh:mm a').format(schedule.startTime!)} - ${DateFormat('hh:mm a').format(schedule.endTime!)}',
                                style: AppTextStyles.m12w600.copyWith(color: AppColors.kLightBlue),
                              ),
                              Text(
                                '${context.localized.breakTime} ${DateFormat('hh:mm a').format(schedule.startTime!)} - ${DateFormat('hh:mm a').format(schedule.endTime!)}',
                                //TODO need break start time and end time
                                style: AppTextStyles.m12w600.copyWith(color: AppColors.kSubjectGreen),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
