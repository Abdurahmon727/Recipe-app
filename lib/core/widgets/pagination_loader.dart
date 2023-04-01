import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../../assets/colors/colors.dart';

class PaginationLoader extends StatelessWidget {
  final ScrollPhysics? scrollPhysics;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final List<dynamic> list;
  final ScrollController? controller;

  final VoidCallback onLoadMore;
  final double seperatorHeight;
  final bool isFailedToLoad;
  const PaginationLoader({
    required this.list,
    required this.onLoadMore,
    required this.isFailedToLoad,
    this.seperatorHeight = 0,
    this.scrollPhysics,
    this.padding,
    this.margin,
    Key? key,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        margin: margin,
        child: Scrollbar(
          controller: controller,
          thickness: 8,
          radius: const Radius.circular(15),
          showTrackOnHover: true,
          interactive: true,
          child: SingleChildScrollView(
            controller: controller,
            padding: padding,
            physics: scrollPhysics,
            child: Column(
              children: [
                ...List.generate(
                  list.length,
                  (index) => Container(
                    padding: EdgeInsets.only(bottom: seperatorHeight),
                    child: list[index],
                  ),
                ),
                // ...list,

                VisibilityDetector(
                  key: const Key('my-key'),
                  onVisibilityChanged: (visibilityInfo) {
                    final visibilityPercentage =
                        visibilityInfo.visibleFraction * 100;
                    if (visibilityPercentage == 100) {
                      onLoadMore();
                    }
                  },
                  child: !isFailedToLoad
                      ? const SpinKitThreeBounce(size: 20, color: orange)
                      : const SizedBox(),
                )
              ],
            ),
          ),
        ),
      );
}
