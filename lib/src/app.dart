import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quicklinks/src/ui/pages/indexpage.dart';
import 'package:google_fonts/google_fonts.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quicklinks | pewriebontal',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        textTheme: GoogleFonts.karlaTextTheme(),
      ),
      home: const IndexPage(),
    );
  }
}
