import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dough/dough.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quicklinks/src/core/launcher.dart';
import 'package:quicklinks/src/utils/info.dart' as constants;

import 'mainpage.dart';

class IndexPage extends StatelessWidget {
  final bool showCopyrightText = constants.kShowCopyrightText;

  const IndexPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const MainPage(),
      floatingActionButton: PressableDough(
        child: FloatingActionButton(
          onPressed: () {
            launchURL('https://github.com/pewriebontal/quicklinks');
          },
          backgroundColor: Colors.purple.shade800,
          tooltip: 'Source Code',
          mini: true,
          child: const Icon(
            FontAwesomeIcons.github,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: Text(
        showCopyrightText
            ? 'Made with Flutter\n and other open source software.\n${constants.kCopyright}\n'
            : 'Made with Flutter\n and other open source software.\n\n',
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 11),
      ),
      backgroundColor: Colors.white,
    );
  }
}
