import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._(); 
  static final appTheme=ThemeData.dark().copyWith(
    textTheme: GoogleFonts.latoTextTheme()
  );
}