import 'package:endava_profile_app/common/constants.dart';
import 'package:endava_profile_app/common/constants/dimens.dart';
import 'package:endava_profile_app/common/constants/palette.dart';
import 'package:flutter/material.dart';

class Toolbar extends StatelessWidget implements PreferredSizeWidget {
  final PreferredSizeWidget bottom;

  Toolbar({this.bottom});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Palette.white,
      centerTitle: true,
      elevation: Dimens.cardElevation,
      title: Text(
        'Core skills',
        style: Theme.of(context)
            .textTheme
            .title
            .copyWith(fontWeight: FontWeight.bold),
      ),
      leading: IconButton(
        icon: Image.asset(
          'assets/images/arrow-back.png',
          width: Dimens.sectionArrowWidth,
        ),
        onPressed: () => Navigator.pushReplacementNamed(
          context,
          AppRoute.of(AppScreen.home),
        ),
      ),
      bottom: bottom,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(Dimens.appBarSize);
}
