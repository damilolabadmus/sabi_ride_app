

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import '../../../style/theme.dart' as Style;

class BackAppBar extends StatelessWidget implements PreferredSizeWidget{
  const BackAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Style.Colors.searchActiveBg,
      centerTitle: true,
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Icon(
              EvaIcons.arrowBack,
              color: Colors.black,
              size: 20
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: IconButton(
            icon: Icon(Icons.home),
            color: Colors.black54,
            iconSize: 20.0,
            onPressed: () {
              Navigator.of(context)
                  .pushNamedAndRemoveUntil(
                  '/landing', (Route<dynamic> route) => false);
            },
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}



/*

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../style/theme.dart' as Style;
import 'package:flutter_svg/svg.dart';

class BackAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? header;
  final Function? press;

  const BackAppBar({
    Key? key,
    this.header,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Text(
        header!,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Style.Colors.blackTextColor,
          fontSize: 17.0,
          fontWeight: FontWeight.w700,
          fontFamily: 'Poppins-Regular',
        ),
      ),
      leading: GestureDetector(
        onTap: press as void Function()?,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SvgPicture.asset(
            'assets/search/search_back_new.svg',
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
*/