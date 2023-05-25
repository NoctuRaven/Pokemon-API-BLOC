import 'package:bloc/bloc.dart';
import 'package:pokedex_bloc/layers/data/repositories/pokemon_repositerie_imp.dart';
import 'package:pokedex_bloc/layers/presentation/bloc/pokemon_list_bloc/pokemon_list_event.dart';
import 'package:pokedex_bloc/layers/presentation/bloc/pokemon_list_bloc/pokemon_list_state.dart';

import '../../../domain/repositories/pokemon_repository.dart';

class ListBloc extends Bloc<ListEvent, ListState> {

  PokemonRepository _repository = PokemonRepositoryImp();
  
  

  ListBloc() : super(InitialState()) {

    on<OnloadList>((event, emit) async{

       final pokemonList = await _repository.getPokemon();
      emit(LoadList(listPokemonLoad: pokemonList));
    });
    
  }
}