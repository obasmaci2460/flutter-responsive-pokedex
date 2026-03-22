import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UIUtils {
  UIUtils._();

  static get getStackHeight => ScreenUtil().orientation==Orientation.portrait ? 0.15.sh :0.15.sw; 
  static get getImageWidth => ScreenUtil().orientation==Orientation.portrait ? 0.2.sh :0.2.sw; 
  static get getPadding => ScreenUtil().orientation==Orientation.portrait ? EdgeInsets.all(8.h): EdgeInsets.all(8.w); 
  static get getCrossAxisAcount => ScreenUtil().orientation==Orientation.portrait ? 2 : 3;
  static get getIconButtonSize=>ScreenUtil().orientation==Orientation.portrait ? 24.h :12.w;
  static get getEdgeInsetsSize=>ScreenUtil().orientation==Orientation.portrait ? EdgeInsets.symmetric(horizontal:16.h) :EdgeInsets.symmetric(horizontal:16.w);
  static get getPokemonImageHeight=>ScreenUtil().orientation==Orientation.portrait ? 0.25.sh :0.25.sw;
  static get getPokemonImageWidth=>ScreenUtil().orientation==Orientation.portrait ? 0.25.sw :0.375.sh;
  static get getCachedNetworkImageHeight=>ScreenUtil().orientation==Orientation.portrait ? 0.25.sh :0.25.sw;
  static get getCachedNetworkImageWidth=>ScreenUtil().orientation==Orientation.portrait ? 0.25.sw :0.375.sh;

  static final Map<String, Color> _typeColorMap = {
    'Grass': Colors.green,
    'Fire': Colors.redAccent,
    'Water': Colors.blue,
    'Electric': Colors.yellow,
    'Rock': Colors.grey,
    'Ground': Colors.brown,
    'Bug': Colors.lightGreenAccent.shade700,
    'Psychic': Colors.indigo,
    'Fighting': Colors.orange,
    'Ghost': Colors.deepPurple,
    'Normal': Colors.black26,
    'Poison': Colors.deepPurpleAccent
  };

  static Color getPokemonCardColor (String type){
      return _typeColorMap[type] ?? Colors.redAccent[200]!;
  }


}