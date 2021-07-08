import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:linktree/src/core/launcher.dart';
import 'package:dough/dough.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

///This linkcard will be the one showing in appPage
class LinkCard extends StatelessWidget {
  LinkCard({this.icon, this.title, this.url, this.color});
  final IconData? icon;
  final String? title;
  final String? url;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return PressableDough(
      child: Card(
        color: color,
        child: InkWell(
          splashColor: Colors.black.withAlpha(50),
          onTap: () {
            launchURL(url!);
          },
//          onLongPress: () {
//            showAboutDialog(context: context);      ///ignore zombie codes
//          },
          child: ListTile(
            leading: FaIcon(
              icon!,
              color: Colors.white,
            ),
            title: Text(
              title!,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
            trailing: Icon(null),
          ),
        ),
      ),
    );
  }
}
