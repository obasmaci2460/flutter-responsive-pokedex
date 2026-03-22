import 'package:flutter/material.dart';
import 'package:poke_app/features/pages/home_page/widgets/app_title.dart';
import 'package:poke_app/features/pages/home_page/widgets/pokemon_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppTitle(),
          Expanded(child: PokemonList()),
        ],
      ), 
    );
  }
}
