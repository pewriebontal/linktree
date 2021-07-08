import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:linktree/src/ui/pages/indexpage.dart';
import 'package:google_fonts/google_fonts.dart';

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Linktree | pewriebontal',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        textTheme: GoogleFonts.karlaTextTheme(),
      ),
      home: IndexPage(),
    );
  }
}
