// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:remote_recipe/core/widgets/w_bottomsheet.dart';

// class CupertinoDatePickerBottomSheet extends StatefulWidget {
//   final ValueChanged<DateTime> onConfirm;
//   final DateTime? initialDate;
//   const CupertinoDatePickerBottomSheet({
//     required this.onConfirm,
//     this.initialDate,
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<CupertinoDatePickerBottomSheet> createState() =>
//       _CupertinoDatePickerBottomSheetState();
// }

// class _CupertinoDatePickerBottomSheetState
//     extends State<CupertinoDatePickerBottomSheet> {
//   late DateTime temporaryDate;

//   @override
//   void initState() {
//     temporaryDate = widget.initialDate ?? DateTime.now();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return WBottomSheet(
//       children: [
//         if (widget.initialDate != null)
//           Align(
//             child: Text(
//               Jiffy(widget.initialDate).format('dd / MM / yyyy'),
//               style: Theme.of(context).textTheme.headline2!.copyWith(
//                     fontSize: 20,
//                     fontWeight: FontWeight.w500,
//                   ),
//             ),
//           ),
//         DateTimePickerWidget(
//           dateFormat: 'dd MMMM yyyy',
//           maxDateTime: DateTime.now(),
//           onChange: (value, _) {
//             temporaryDate = value;
//           },
//           pickerTheme: DateTimePickerTheme(
//             backgroundColor: Colors.transparent,
//             showTitle: false,
//             selectionOverlay: Column(
//               children: [
//                 Container(
//                   width: double.maxFinite,
//                   height: 1,
//                   color: context.read<ThemeBloc>().state.isLight
//                       ? lightGrey
//                       : darkTextColor,
//                 ),
//                 const Spacer(),
//                 Container(
//                   width: double.maxFinite,
//                   height: 1,
//                   color: darkTextColor,
//                 ),
//               ],
//             ),
//             itemTextStyle: Theme.of(context).textTheme.headline2!.copyWith(
//                   fontSize: 15,
//                   fontWeight: FontWeight.w500,
//                 ),
//           ),
//         ),
//         WScaleAnimation(
//           onTap: () {
//             widget.onConfirm(temporaryDate);
//             Navigator.pop(context);
//           },
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(20),
//                 child: Text(
//                   'Confirm',
//                   style: Theme.of(context).textTheme.caption!.copyWith(
//                         fontSize: 18,
//                         fontWeight: FontWeight.w500,
//                       ),
//                 ),
//               ),
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }
