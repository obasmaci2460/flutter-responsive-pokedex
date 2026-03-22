import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poke_app/core/constants.dart';
import 'package:poke_app/core/ui_utils.dart';
import 'package:poke_app/features/pages/detail_page/detail_page.dart';
import 'package:poke_app/features/pages/home_page/widgets/pokemon_item_image.dart';
import 'package:poke_app/models/pokemon.dart';

class PokemonListItem extends StatelessWidget {
  final Pokemon currentPokemon;

  const PokemonListItem({super.key, required this.currentPokemon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return DetailPage(pokemon: currentPokemon);
            },
          ),
        );
      },
      child: Card(
        color: UIUtils.getPokemonCardColor(currentPokemon.type![0]),
        elevation: 4,
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(36.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              currentPokemon.name.toString(),
              style: AppConstants.pokemonNameStyle,
            ),
            Chip(
              label: Text(
                currentPokemon.type![0].toString(),
                style: AppConstants.pokemonChipStyle,
              ),
            ),
            Expanded(child: PokemonItemImage(pokemon: currentPokemon)),
          ],
        ),
      ),
    );
  }
}
