


import 'package:pokedex_bloc/layers/domain/entities/pokemon_entitie.dart';

abstract class ListState{
  List<PokemonEntitie> listPokemon;
  ListState({required this.listPokemon});
}


class InitialState extends ListState{
  InitialState(): super(listPokemon: []);
}



class LoadList extends ListState{
List<PokemonEntitie> listPokemonLoad;
LoadList({required this.listPokemonLoad}):super(listPokemon: listPokemonLoad);
}

