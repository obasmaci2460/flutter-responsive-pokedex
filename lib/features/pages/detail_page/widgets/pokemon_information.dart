import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poke_app/core/constants.dart';
import 'package:poke_app/core/ui_utils.dart';
import 'package:poke_app/models/pokemon.dart';

class PokemonInformation extends StatelessWidget {
  
  final Pokemon pokemon;

  const PokemonInformation({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Padding(
        padding: UIUtils.getPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
              _rowItem('Name',pokemon.name),
              _rowItem('Height',pokemon.height),
              _rowItem('Weight',pokemon.weight),
              _rowItem('Spawn Time',pokemon.spawnTime),
              _rowItem('Weakness',pokemon.weaknesses),
              _rowItem('Pre Evolution',pokemon.prevEvolution),
              _rowItem('Next Evolution',pokemon.nextEvolution)
          ],
        ),
      ),
    );
  }
  
  _rowItem(String s, dynamic type) {
    if (type is List && type.isNotEmpty) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(s,style:AppConstants.containLabelStyle),
          Text(type.join(' , '),style: AppConstants.containDescriptionStyle) 
        ],
      );
    }
    else if (type ==null)
    {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(s,style: AppConstants.containLabelStyle),
          Text(type ?? 'Not Available',style: AppConstants.containDescriptionStyle,) 
        ],
        );
    }
    else{
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(s,style: AppConstants.containLabelStyle),
          Text(type,style: AppConstants.containDescriptionStyle,) 
        ],
      );
    }
  }
}