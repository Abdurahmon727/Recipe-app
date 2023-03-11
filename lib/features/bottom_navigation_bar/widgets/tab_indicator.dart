import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../assets/colors/colors.dart';
import '../navbar/navbar.dart';

class TabItemWidget extends StatelessWidget {
  final bool isActive;
  final NavBar item;
  // final VoidCallback onLongPress;
  const TabItemWidget({
    this.isActive = false,
    Key? key,
    // required this.onLongPress,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
        width: double.maxFinite,
        decoration: const BoxDecoration(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              item.icon,
              fit: BoxFit.contain,
              color: isActive ? orange : crprus,
            ),
            const SizedBox(height: 4),
            Text(
              item.title,
              style: isActive
                  ? Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 10,
                        color: orange,
                      )
                  : Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 10,
                        color: crprus,
                      ),
            ),
          ],
        ),
      );
}
