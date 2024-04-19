// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:hulk_transport/core/constants/colors.dart';
// import 'package:syncfusion_flutter_datepicker/datepicker.dart';

// Future<void> showSelectDateDialog({
//   required BuildContext context,
//   required void Function(DateRangePickerSelectionChangedArgs)? onSelectionChanged,
//   required bool enablePastDates,
//   required DateTime? maxDate,
//   required DateTime? minDate,
// }) async {
//   return showDialog<void>(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         backgroundColor: AppColors.primaryColor,
//         elevation: 0,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.all(Radius.circular(16.0.r)),
//         ),
//         content: SizedBox(
//           height: 320.h,
//           width: 350.w,
//           child: SfDateRangePicker(
//             view: DateRangePickerView.month,
//             initialSelectedDate: DateTime.now(),
//             enablePastDates: enablePastDates,
//             maxDate: maxDate,
//             minDate: minDate,
//             selectionMode: DateRangePickerSelectionMode.single,
//             onSelectionChanged: onSelectionChanged,
//           ),
//         ),
//       );
//     },
//   );
// }
