import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/theming/color.dart';
import '../../../core/theming/styles.dart';

class CalendarDialog extends StatefulWidget {
  const CalendarDialog({super.key});

  @override
  _CalendarDialogState createState() => _CalendarDialogState();
}

class _CalendarDialogState extends State<CalendarDialog> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          padding: EdgeInsets.all(16),
          width: 320,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TableCalendar(
                firstDay: DateTime.utc(2020, 1, 1),
                lastDay: DateTime.utc(2030, 12, 31),
                focusedDay: _focusedDay,
                selectedDayPredicate: (day) => isSameDay(day, _selectedDay),
                onDaySelected: (selectedDay, focusedDay) {
                  setState(() {
                    _selectedDay = selectedDay;
                    _focusedDay = focusedDay;
                  });
                },
                calendarFormat: CalendarFormat.month,
                headerStyle: HeaderStyle(
                  titleCentered: true,
                  formatButtonVisible: false,
                  leftChevronIcon: Icon(Icons.chevron_left),
                  rightChevronIcon: Icon(Icons.chevron_right),
                  titleTextFormatter: (date, locale) => 'ديسمبر 2022',
                  titleTextStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                calendarStyle: CalendarStyle(
                  todayDecoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                  selectedDecoration: BoxDecoration(
                    color: Color(0xFF4C1D95),
                    shape: BoxShape.circle,
                  ),
                  markerDecoration: BoxDecoration(
                    color: Colors.teal,
                    shape: BoxShape.circle,
                  ),
                ),
                daysOfWeekStyle: DaysOfWeekStyle(
                  weekendStyle: TextStyle(color: Colors.redAccent),
                  weekdayStyle: TextStyle(color: Colors.black87),
                ),
              ),
              verticalSpace(12),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {

                        if (_selectedDay != null) {
                          Navigator.pop(context, _selectedDay); // حفظ وإرجاع التاريخ
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorManager.purple,
                      ),
                      child: Text(
                        "حفظ",
                        style: StylesManager.font16MorePurpleMedium.copyWith(
                          color: ColorManager.white,
                        ),
                      ),
                    ),
                  ),
                  horizontalSpace(10),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context); // إلغاء
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorManager.buttonGray,
                      ),
                      child: Text("إلغاء",  style: StylesManager.font16MorePurpleMedium.copyWith(
                        color: ColorManager.white,
                      ),),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}