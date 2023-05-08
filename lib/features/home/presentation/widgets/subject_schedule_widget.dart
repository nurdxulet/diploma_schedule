// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:schedule/core/resources/assets.gen.dart';
import 'package:schedule/core/resources/resources.dart';

class SubjectScheduleWidget extends StatelessWidget {
  final String subjectName;
  final String? lessonType;
  final String? lessonLocation;
  final String? lessonStartTime;
  final String? lessonEndTime;
  final String? lessonBreakStartTime;
  final String? lessonBreakEndTime;
  final Color? widgetColor;
  const SubjectScheduleWidget({
    super.key,
    required this.subjectName,
    this.lessonType,
    this.lessonLocation,
    this.lessonStartTime,
    this.lessonEndTime,
    this.lessonBreakStartTime,
    this.lessonBreakEndTime,
    this.widgetColor = AppColors.kPrimary,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // SizedBox(
          //   width: 40,
          //   child: Column(
          //     children: const [
          //       Text(
          //         '11:35',
          //         style: AppTextStyles.m13w600,
          //       ),
          //       Text(
          //         '13:05',
          //         style: AppTextStyles.m12w600Grey,
          //       ),
          //     ],
          //   ),
          // ),
          // const SizedBox(
          //   width: 10,
          // ),
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
                                lessonType ?? 'unknown',
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
                                lessonLocation ?? 'unknown',
                                style: AppTextStyles.m12w600.copyWith(color: widgetColor),
                              ),
                            ],
                          ),
                          Text(
                            subjectName,
                            // 'Enterprice Architecture',
                            style: AppTextStyles.m24w700,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '$lessonStartTime - $lessonEndTime',
                                style: AppTextStyles.m12w600.copyWith(color: AppColors.kLightBlue),
                              ),
                              Text(
                                'Break: $lessonBreakStartTime - $lessonBreakEndTime',
                                style: AppTextStyles.m12w600.copyWith(color: AppColors.kLightBlue),
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
