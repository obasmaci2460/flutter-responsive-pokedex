import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poke_app/core/constants.dart';
import 'package:poke_app/core/ui_utils.dart';
import 'package:poke_app/features/pages/detail_page/widgets/pokemon_information.dart';
import 'package:poke_app/models/pokemon.dart';

class DetailPage extends StatelessWidget {
  final Pokemon pokemon;

  const DetailPage({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return ScreenUtil().orientation == Orientation.portrait
        ? _buildPortraitScaffold(context)
        : _buildLandScapeScaffold(context);
  }

  Scaffold _buildLandScapeScaffold(BuildContext context) {
    return Scaffold(
      backgroundColor: UIUtils.getPokemonCardColor(pokemon.type?[0] ?? ''),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              color: Colors.white,
              icon: Icon(Icons.arrow_back, size: UIUtils.getIconButtonSize),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: UIUtils.getEdgeInsetsSize,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      pokemon.name!,
                                      style: AppConstants.pokemonNameStyle,
                                    ),
                                    Expanded(child: SizedBox()),
                                    Text(
                                      "#${pokemon.num!}",
                                      style: AppConstants.pokemonNumStyle,
                                    ),
                                  ],
                                ),
                                Chip(
                                  label: Text(pokemon.type?.join(' , ') ?? ''),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Hero(
                            tag: pokemon.id!,
                            child: CachedNetworkImage(
                              imageUrl: pokemon.img ?? '',
                              placeholder:
                                  (context, url) => CircularProgressIndicator(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: UIUtils.getPadding,
                      child: PokemonInformation(pokemon: pokemon),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Scaffold _buildPortraitScaffold(BuildContext context) {
    return Scaffold(
      backgroundColor: UIUtils.getPokemonCardColor(pokemon.type?[0] ?? ''),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              color: Colors.white,
              icon: Icon(Icons.arrow_back, size: UIUtils.getIconButtonSize),
            ),
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: UIUtils.getEdgeInsetsSize,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              pokemon.name!,
                              style: AppConstants.pokemonNameStyle,
                            ),
                            Expanded(child: SizedBox()),
                            Text(
                              "#${pokemon.num!}",
                              style: AppConstants.pokemonNumStyle,
                            ),
                          ],
                        ),
                        Chip(label: Text(pokemon.type?.join(' , ') ?? '')),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        Positioned(
                          right: 0,
                          top: 0,
                          child: Image.asset(
                            AppConstants.pokemonBackgroundImageUrl,
                            fit: BoxFit.fitHeight,
                            height: 0.15.sh,
                          ),
                        ),
                        Positioned(
                          right: 0,
                          left: 0,
                          bottom: 0,
                          top: 0.1.sh,
                          child: PokemonInformation(pokemon: pokemon),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Hero(
                            tag: pokemon.id!,
                            child: CachedNetworkImage(
                              imageUrl: pokemon.img!,
                              errorWidget: (context, url, error) => Icon(Icons.error),
                              placeholder:
                                  (context, url) => CircularProgressIndicator(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
