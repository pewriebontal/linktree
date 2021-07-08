import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dough/dough.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linktree/src/core/launcher.dart';
import 'package:linktree/src/utils/info.dart' as Constants;

import 'mainpage.dart';

class IndexPage extends StatelessWidget {
  final bool showCopyrightText = Constants.kShowCopyrightText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainPage(),
      floatingActionButton: PressableDough(
        child: FloatingActionButton(
          onPressed: () {
            launchURL('https://github.com/pewriebontal/linktree');
          },
          backgroundColor: Colors.purple.shade800,
          tooltip: 'Source Code',
          mini: true,
          child: Icon(
            FontAwesomeIcons.github,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: Text(
        showCopyrightText
            ? 'Made with Flutter\n and other open source software.\n${Constants.kCopyright}\n'
            : 'Made with Flutter\n and other open source software.\n\n',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 11),
      ),
    );
  }
}
