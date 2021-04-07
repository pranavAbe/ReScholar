import 'package:flutter/material.dart';

import 'buttons.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  final Icon leadingIcon;
  final List<Color> leadingIconGradient;
  final String title;
  final List<Color> titleGradient;
  final bool withSearch;
  final List<Color> searchGradient;

  Header(this.leadingIcon, this.leadingIconGradient, this.title,
      this.titleGradient, this.withSearch, this.searchGradient);

  @override
  Size get preferredSize => new Size.fromHeight(75);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black87,
      toolbarHeight: 75,
      leading: Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: NavigationDrawerButton(leadingIcon, leadingIconGradient)),
      title: Padding(
        padding: EdgeInsets.only(left: 15.0),
        child: ShaderMask(
          shaderCallback: (rect) => LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: titleGradient)
              .createShader(rect),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 54,
              fontWeight: FontWeight.w700,
              fontFamily: 'OpenSans',
            ),
          ),
        ),
      ),
      actions: withSearch
          ? <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 24.0),
                child: SearchButton(searchGradient),
              )
            ]
          : null,
    );
  }
}