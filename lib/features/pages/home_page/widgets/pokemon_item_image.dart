import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:poke_app/core/constants.dart';
import 'package:poke_app/core/ui_utils.dart';
import 'package:poke_app/models/pokemon.dart';

class PokemonItemImage extends StatelessWidget {

  final Pokemon pokemon;

  const PokemonItemImage({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:UIUtils.getPadding,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              AppConstants.pokemonBackgroundImageUrl,
              fit: BoxFit.fitHeight,
              height: UIUtils.getPokemonImageHeight,
              width: UIUtils.getPokemonImageWidth,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Hero(
              tag: pokemon.id!,
              child: CachedNetworkImage(
                imageUrl: pokemon.img!,
                errorWidget: (context, url, error) => Icon(Icons.error),
                placeholder: (context, url) => CircularProgressIndicator(),
                fit: BoxFit.fitHeight,
                height: UIUtils.getCachedNetworkImageHeight,
                width: UIUtils.getCachedNetworkImageWidth,
              ),
            ),
          ),
        ],
      ),
    );
  }
}