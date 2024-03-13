// // import 'package:demoproject/Constant/color.dart';
// // import 'package:flutter/material.dart';
// // import 'package:intl/intl.dart';
// // import 'package:table_calendar/table_calendar.dart';

// // // class DatePickerCustom extends StatefulWidget {
// // //   const DatePickerCustom({Key? key}) : super(key: key);

// // //   @override
// // //   State<DatePickerCustom> createState() => _DatePickerCustomState();
// // // }

// // // class _DatePickerCustomState extends State<DatePickerCustom> {
// // //   int selectedIndex = 0;
// // //   DateTime now = DateTime.now();
// // //   late DateTime lastDayOfMonth;
// // //   @override
// // //   void initState() {
// // //     super.initState();
// // //     lastDayOfMonth = DateTime(now.year, now.month + 1, 0);
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       backgroundColor: Colors.white,
// // //       appBar: AppBar(
// // //         title: Center(
// // //           child: Text(
// // //             "Calendar Horizontal View",
// // //             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
// // //           ),
// // //         ),
// // //         backgroundColor: Blue,
// // //       ),
// // //       body: Column(
// // //         children: [
// // //           SizedBox(
// // //             height: 30,
// // //           ),
// // //           Row(
// // //             children: const [
// // //               // Icon(
// // //               //   Icons.arrow_back_ios,
// // //               //   color: Colors.orange,
// // //               // ),
// // //               Expanded(
// // //                   child: Text("Workout",
// // //                       textAlign: TextAlign.center,
// // //                       style: TextStyle(
// // //                         fontSize: 20,
// // //                         fontWeight: FontWeight.bold,
// // //                         color: Colors.black,
// // //                       )))
// // //             ],
// // //           ),
// // //           const SizedBox(height: 25),
// // //           SingleChildScrollView(
// // //             scrollDirection: Axis.horizontal,
// // //             physics: const ClampingScrollPhysics(),
// // //             child: Row(
// // //               children: List.generate(
// // //                 lastDayOfMonth.day,
// // //                 (index) {
// // //                   final currentDate =
// // //                       lastDayOfMonth.add(Duration(days: index + 1));
// // //                   final dayName = DateFormat('E').format(currentDate);
// // //                   return Padding(
// // //                     padding: EdgeInsets.only(
// // //                         left: index == 0 ? 16.0 : 0.0, right: 16.0),
// // //                     child: GestureDetector(
// // //                       onTap: () => setState(() {
// // //                         selectedIndex = index;
// // //                       }),
// // //                       child: Column(
// // //                         mainAxisAlignment: MainAxisAlignment.center,
// // //                         children: [
// // //                           Container(
// // //                             height: 42.0,
// // //                             width: 42.0,
// // //                             alignment: Alignment.center,
// // //                             decoration: BoxDecoration(
// // //                               color: selectedIndex == index
// // //                                   ? Colors.orange
// // //                                   : Colors.transparent,
// // //                               borderRadius: BorderRadius.circular(44.0),
// // //                             ),
// // //                             child: Text(
// // //                               dayName.substring(0, 3),
// // //                               style: TextStyle(
// // //                                 fontSize: 20.0,
// // //                                 color: selectedIndex == index
// // //                                     ? Colors.white
// // //                                     : Colors.black54,
// // //                                 fontWeight: FontWeight.bold,
// // //                               ),
// // //                             ),
// // //                           ),
// // //                           const SizedBox(height: 20),
// // //                           Text(
// // //                             "${index + 1}",
// // //                             // currentDate.day.toString(),
// // //                             style: const TextStyle(
// // //                               fontSize: 16.0,
// // //                               color: Colors.black54,
// // //                               fontWeight: FontWeight.bold,
// // //                             ),
// // //                           ),
// // //                           const SizedBox(height: 10),
// // //                           Container(
// // //                             height: 2.0,
// // //                             width: 28.0,
// // //                             color: selectedIndex == index
// // //                                 ? Colors.orange
// // //                                 : Colors.transparent,
// // //                           ),
// // //                         ],
// // //                       ),
// // //                     ),
// // //                   );
// // //                 },
// // //               ),
// // //             ),
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }
// // // }

// // class name extends StatefulWidget {

// //   @override
// //   State<name> createState() => _nameState();
// // }

// // class _nameState extends State<name> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container();
// //   }
// // }

// // class HomeCalendarPage extends StatefulWidget {
// //   HomeCalendarPage({Key? key}) : super(key: key);
// //   @override
// //   HomeCalendarPageState createState() => HomeCalendarPageState();
// // }

// // class HomeCalendarPageState extends State<HomeCalendarPage> {
// //   late CalendarController _controller;

// //   @override
// //   void initState() {
// //     super.initState();
// //     _controller = CalendarController();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Flutter Calendar Example'),
// //       ),
// //       body: SingleChildScrollView(
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: <Widget>[
// //             TableCalendar(
// //               initialCalendarFormat: CalendarFormat.month,
// //               calendarStyle: CalendarStyle(
// //                   todayColor: Colors.blue,
// //                   selectedColor: Theme.of(context).primaryColor,
// //                   todayStyle: TextStyle(
// //                       fontWeight: FontWeight.bold,
// //                       fontSize: 22.0,
// //                       color: Colors.white)
// //               ),
// //               headerStyle: HeaderStyle(
// //                 centerHeaderTitle: true,
// //                 formatButtonDecoration: BoxDecoration(
// //                   color: Colors.brown,
// //                   borderRadius: BorderRadius.circular(22.0),
// //                 ),
// //                 formatButtonTextStyle: TextStyle(color: Colors.white),
// //                 formatButtonShowsNext: false,
// //               ),
// //               startingDayOfWeek: StartingDayOfWeek.monday,
// //               onDaySelected: (date, events) {
// //                 print(date.toUtc());
// //               },
// //               builders: CalendarBuilders(
// //                 selectedDayBuilder: (context, date, events) => Container(
// //                     margin: const EdgeInsets.all(5.0),
// //                     alignment: Alignment.center,
// //                     decoration: BoxDecoration(
// //                         color: Theme.of(context).primaryColor,
// //                         borderRadius: BorderRadius.circular(8.0)),
// //                     child: Text(
// //                       date.day.toString(),
// //                       style: TextStyle(color: Colors.white),
// //                     )),
// //                 todayDayBuilder: (context, date, events) => Container(
// //                     margin: const EdgeInsets.all(5.0),
// //                     alignment: Alignment.center,
// //                     decoration: BoxDecoration(
// //                         color: Colors.blue,
// //                         borderRadius: BorderRadius.circular(8.0)),
// //                     child: Text(
// //                       date.day.toString(),
// //                       style: TextStyle(color: Colors.white),
// //                     )),
// //               ),
// //               calendarController: _controller,
// //             )
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'package:demoproject/Constant/color.dart';
// import 'package:flutter/material.dart';
// import 'package:table_calendar/table_calendar.dart';

// class TableBasicsExample extends StatefulWidget {
//   @override
//   _TableBasicsExampleState createState() => _TableBasicsExampleState();
// }

// class _TableBasicsExampleState extends State {
//   CalendarFormat _calendarFormat = CalendarFormat.month;
//   DateTime _focusedDay = DateTime.now();
//   DateTime? _selectedDay;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Blue,
//         title: Text('TableCalendar'),
//       ),
//       body: TableCalendar(
//         firstDay: DateTime.utc(2010, 10, 20),
//         lastDay: DateTime.utc(2040, 10, 20),
//         focusedDay: _focusedDay,
//         calendarFormat: _calendarFormat,
//         selectedDayPredicate: (day) {
//           // Use `selectedDayPredicate` to determine which day is currently selected.
//           // If this returns true, then `day` will be marked as selected.
//           // Using `isSameDay` is recommended to disregard
//           // the time-part of compared DateTime objects.
//           return isSameDay(_selectedDay, day);
//         },
//         onDaySelected: (selectedDay, focusedDay) {
//           if (!isSameDay(_selectedDay, selectedDay)) {
//             // Call `setState()` when updating the selected day
//             setState(() {
//               _selectedDay = selectedDay;
//               _focusedDay = focusedDay;
//             });
//           }
//         },
//         onFormatChanged: (format) {
//           if (_calendarFormat != format) {
//             // Call `setState()` when updating calendar format
//             setState(() {
//               _calendarFormat = format;
//             });
//           }
//         },
//         onPageChanged: (focusedDay) {
//           // No need to call `setState()` here
//           _focusedDay = focusedDay;
//         },
//       ),
//     );
//   }
// }

import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class CalendarGrid extends StatefulWidget {
  const CalendarGrid({Key? key}) : super(key: key);

  @override
  _CalendarGridState createState() => _CalendarGridState();
}

class _CalendarGridState extends State<CalendarGrid> {
  final DateTime _selectedDate = DateTime.now();

  int _selectedIndex = 0;
  late int indexOfFirstDayMonth;

  @override
  void initState() {
    super.initState();
    indexOfFirstDayMonth = getIndexOfFirstDayInMonth(_selectedDate);
    setState(() {
      _selectedIndex = indexOfFirstDayMonth +
          int.parse(DateFormat('d').format(DateTime.now())) -
          1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(12),
            child: Icon(
              Icons.arrow_forward,
              color: Colors.black,
            ),
          )
        ],
        title: Column(
          children: [
            const Text(
              "Calendar",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.black),
            ),
            Text(
              DateFormat('MMMM yyyy').format(_selectedDate),
              style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: Colors.grey),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
            child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 7,
                ),
                itemCount: daysOfWeek.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.center,
                    child: Text(
                      daysOfWeek[index],
                      style: const TextStyle(
                          fontSize: 15,
                          color: Color(0xFFFD00F0F),
                          fontWeight: FontWeight.bold),
                    ),
                  );
                }),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 0.1,
                    blurRadius: 7,
                    offset: const Offset(0, 7.75),
                  ),
                ]),
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 7,
              ),
              itemCount: listOfDatesInMonth(_selectedDate).length +
                  indexOfFirstDayMonth,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: GestureDetector(
                    onTap: () => index >= indexOfFirstDayMonth
                        ? setState(() {
                            _selectedIndex = index;
                          })
                        : null,
                    child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: index == _selectedIndex
                                ? Color(0xFFFD00F0F)
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(50)),
                        child: index < indexOfFirstDayMonth
                            ? const Text("")
                            : Text(
                                '${index + 1 - indexOfFirstDayMonth}',
                                style: TextStyle(
                                    color: index == _selectedIndex
                                        ? Colors.white
                                        : index % 7 == 6
                                            ? Colors.redAccent
                                            : Colors.black,
                                    fontSize: 17),
                              )),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(bottom: 20, top: 10),
                  child: Image.asset(
                    'assets/images/g.png',
                    width: 30,
                    height: 200,
                  ),
                ),
                const Text("No events today",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List<int> listOfDatesInMonth(DateTime currentDate) {
  var selectedMonthFirstDay =
      DateTime(currentDate.year, currentDate.month, currentDate.day);
  var nextMonthFirstDay = DateTime(selectedMonthFirstDay.year,
      selectedMonthFirstDay.month + 1, selectedMonthFirstDay.day);
  var totalDays = nextMonthFirstDay.difference(selectedMonthFirstDay).inDays;

  var listOfDates = List<int>.generate(totalDays, (i) => i + 1);
  return (listOfDates);
}

int getIndexOfFirstDayInMonth(DateTime currentDate) {
  var selectedMonthFirstDay =
      DateTime(currentDate.year, currentDate.month, currentDate.day);
  var day = DateFormat('EEE').format(selectedMonthFirstDay).toUpperCase();

  return daysOfWeek.indexOf(day) - 1;
}

final List<String> daysOfWeek = [
  "MON",
  "TUE",
  "WED",
  "THU",
  "FRI",
  "SAT",
  "SUN",
];
