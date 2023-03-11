// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:flutter/material.dart';
// import 'package:ihyouz_admin/core/widgets/interpolate.dart';


// class StrokePaint extends CustomPainter {
//   final double progress;
//   final p1 = const Offset(6, 15);
//   final p2 = const Offset(15, 0);
//   final Color color;
//   final interpolateY = Interpolate(
//       inputRange: [0, 1], outputRange: [16, 4], extrapolate: Extrapolate.clamp);
//   final interpolateX = Interpolate(
//       inputRange: [0, 1], outputRange: [4, 15], extrapolate: Extrapolate.clamp);

//   StrokePaint(
//     this.progress,
//     this.color,
//   );

//   @override
//   void paint(Canvas canvas, Size size) {
//     final interpolateW = Interpolate(
//         inputRange: [0, 1],
//         outputRange: [size.width, 5],
//         extrapolate: Extrapolate.clamp);
//     final interpolateH = Interpolate(
//         inputRange: [0, 1],
//         outputRange: [4, size.height - 5],
//         extrapolate: Extrapolate.clamp);
//     final _paint = Paint()
//       ..strokeCap = StrokeCap.round
//       ..strokeWidth = 2
//       ..color = color;
//     // final _paint2 = Paint()
//     //   ..strokeCap = StrokeCap.round
//     //   ..strokeWidth = 5
//     //   ..color = darkTextColor;
//     final finalPainter = progress == 1 ? Paint() : _paint;
//     final path = Path()
//       ..moveTo(interpolateH.eval(progress), interpolateW.eval(progress) - 3)
//       ..lineTo(size.width - 4, 3)
//       ..lineTo(size.width - 3, 6)
//       ..lineTo(
//           interpolateH.eval(progress) + 1, interpolateW.eval(progress) - 2);
//     canvas
//       // ..drawPath(path, _paint2)
//       ..drawLine(
//           Offset(interpolateX.eval(progress), interpolateY.eval(progress)),
//           p2,
//           finalPainter);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) =>
//       oldDelegate != this;
// }
