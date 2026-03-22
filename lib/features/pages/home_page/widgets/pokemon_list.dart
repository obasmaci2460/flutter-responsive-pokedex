import 'package:flutter/material.dart';
import 'package:poke_app/core/services/poke_api.dart';
import 'package:poke_app/core/ui_utils.dart';
import 'package:poke_app/features/pages/home_page/widgets/pokemon_list_item.dart';
import 'package:poke_app/models/pokemon.dart';

class PokemonList extends StatefulWidget {
  const PokemonList({super.key});

  @override
  State<PokemonList> createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  
  late final Future<List<Pokemon>> _futureList;

  @override
  void initState() {
    super.initState();
    _futureList = PokeApi.getPokemenList();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("Birinci build");
    return FutureBuilder<List<Pokemon>>(
      future: _futureList,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Pokemon> list = snapshot.data!;
              return GridView.builder(                
                itemCount: list.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: UIUtils.getCrossAxisAcount,
                ),
                itemBuilder: (context, index) {
                  debugPrint("İkinci build");  
                  Pokemon currentPokemon = list[index];
                  return PokemonListItem(currentPokemon:currentPokemon);
                },
              );
        } else if (snapshot.hasError) {
          return Center(child: Text("Veri gelirken hata oluştu"));
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}



