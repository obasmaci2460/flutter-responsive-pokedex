// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppConstants {
  static const appTitle = 'Pokedox';

  static const url='https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/refs/heads/master/pokedex.json';

  static const pokemonBackgroundImageUrl='assets/pokeball.png';

  static get appTitleStyle => TextStyle(
    fontSize: AppConstants.calculateFontSize(48),
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  static get pokemonNameStyle => TextStyle(
    fontSize: AppConstants.calculateFontSize(16),
    color: Colors.white,
  );
  
  static get pokemonChipStyle => TextStyle(
    fontSize: AppConstants.calculateFontSize(12),
    color: Colors.white,
  );

  static get pokemonNumStyle => TextStyle(
    fontSize: AppConstants.calculateFontSize(16),
    color: Colors.white,
  );

  static get containLabelStyle => TextStyle(
    fontSize: AppConstants.calculateFontSize(16),
    color: Colors.black
  );  

  static get containDescriptionStyle => TextStyle(
    fontSize: AppConstants.calculateFontSize(12),
    color: Colors.black,
    fontWeight: FontWeight.bold
  );  

  static double calculateFontSize(double size) {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return size.sp;
    } else {
      return (size *0.5).sp;
    }
  }
}
