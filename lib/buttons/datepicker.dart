// import 'package:custom_date_range_picker/custom_date_range_picker.dart';
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
//
// class Calender extends StatefulWidget {
//   const Calender({Key? key}) : super(key: key);
//
//   @override
//   State<Calender> createState() => _CalenderState();
// }
//
// class _CalenderState extends State<Calender> {
//   DateTime? startDate;
//   DateTime? endDate;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: showCustomDateRangePicker(
//         context,
//         dismissible: true,
//         minimumDate: DateTime.now().subtract(const Duration(days: 30)),
//         maximumDate: DateTime.now().add(const Duration(days: 30)),
//         endDate: endDate,
//         startDate: startDate,
//         backgroundColor: Colors.white,
//         primaryColor: Colors.green,
//         onApplyClick: (start, end) {
//           setState(() {
//             endDate = end;
//             startDate = start;
//           });
//         },
//         onCancelClick: () {
//           setState(() {
//             endDate = null;
//             startDate = null;
//           });
//         },
//       ),
//     );
//   }
// }
// //   '${startDate != null ? DateFormat("dd, MMM").format(startDate!) : '-'} / ${endDate != null ? DateFormat("dd, MMM").format(endDate!) : '-'}',
