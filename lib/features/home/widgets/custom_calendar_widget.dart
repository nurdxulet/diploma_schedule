import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:schedule/core/extension/src/build_context.dart';
import 'package:schedule/core/resources/assets.gen.dart';
import 'package:schedule/core/resources/resources.dart';
import 'package:schedule/features/app/widgets/custom/custom_buttons/custom_square_button.dart';
import 'package:table_calendar/table_calendar.dart';

class CustomCalendarWidget extends StatefulWidget {
  final Function(DateTime)? onSelected;
  const CustomCalendarWidget({
    super.key,
    this.onSelected,
  });

  @override
  State<CustomCalendarWidget> createState() => _CustomCalendarWidgetState();
}

class _CustomCalendarWidgetState extends State<CustomCalendarWidget> {
  DateTime _selectedDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      startingDayOfWeek: StartingDayOfWeek.monday,
      rowHeight: 78,
      focusedDay: _selectedDay,
      currentDay: _selectedDay,
      locale: context.currentLocale.code,
      onDaySelected: (selectedDay, focusedDay) {
        _selectedDay = selectedDay;
        widget.onSelected?.call(selectedDay);
        setState(() {});
      },
      calendarBuilders: CalendarBuilders(
        outsideBuilder: (context, day, focusedDay) {
          return CalendarItemWidget(
            day: day,
          );
        },
        disabledBuilder: (context, day, focusedDay) {
          return CalendarItemWidget(
            day: day,
            isDisabled: true,
          );
        },
        defaultBuilder: (context, day, focusedDay) {
          return CalendarItemWidget(
            day: day,
          );
        },
        todayBuilder: (context, day, focusedDay) {
          return CalendarItemWidget(
            isSelected: true,
            day: day,
          );
        },
      ),
      headerStyle: HeaderStyle(
        formatButtonVisible: false,
        headerPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ).copyWith(top: 12),
        titleTextFormatter: (date, locale) => DateFormat.MMMM(locale).format(date).capitalize(),
        titleTextStyle: AppTextStyles.m18w600,
        leftChevronMargin: EdgeInsets.zero,
        leftChevronPadding: const EdgeInsets.only(right: 4),
        rightChevronMargin: EdgeInsets.zero,
        rightChevronPadding: const EdgeInsets.only(left: 4),
        leftChevronIcon: CustomSquareButton(
          iconPath: Assets.icons.chevronLeft.path,
          backgroundColor: AppColors.kMainOrange.withOpacity(0.1),
          iconColor: AppColors.kMainOrange,
        ),
        rightChevronIcon: CustomSquareButton(
          iconPath: Assets.icons.chevronRight.path,
          backgroundColor: AppColors.kMainOrange,
          iconColor: AppColors.kWhite,
        ),
      ),
      daysOfWeekVisible: false,
      calendarStyle: CalendarStyle(
        disabledDecoration: BoxDecoration(
          color: AppColors.kMainOrange.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12),
        ),
        defaultDecoration: BoxDecoration(
          color: AppColors.kMainOrange.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12),
        ),
        weekendDecoration: BoxDecoration(
          color: AppColors.kMainOrange.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12),
        ),
        holidayDecoration: BoxDecoration(
          color: AppColors.kMainOrange.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12),
        ),
        outsideDecoration: BoxDecoration(
          color: AppColors.kMainOrange.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      calendarFormat: CalendarFormat.week,
      firstDay: DateTime.now(),
      lastDay: DateTime(2024),
    );
  }
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}

class CalendarItemWidget extends StatelessWidget {
  final bool? isSelected;
  final bool? isDisabled;
  final DateTime day;
  const CalendarItemWidget({
    super.key,
    required this.day,
    this.isSelected,
    this.isDisabled,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 10),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: isSelected ?? false ? AppGradients.orangeButtonGradient : null,
          color: isDisabled ?? false
              ? Colors.grey.withOpacity(0.3)
              : isSelected ?? false
                  ? null
                  : AppColors.kMainOrange.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                DateFormat('E', context.currentLocale.code).format(day).toUpperCase(),
                style: isSelected ?? false
                    ? AppTextStyles.m12w500.copyWith(color: AppColors.kWhite)
                    : AppTextStyles.m12w500,
              ),
              Text(
                day.day.toString(),
                style: isSelected ?? false
                    ? AppTextStyles.m16w600.copyWith(color: AppColors.kWhite)
                    : AppTextStyles.m16w600,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
