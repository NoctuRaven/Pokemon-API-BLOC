
import 'package:dio/dio.dart';

import '../../../domain/entities/pokemon_call_entitie.dart';
import '../../../domain/entities/pokemon_entitie.dart';
import '../../../domain/repositories/Pokemon_datasource_remote.dart';

class PokemonDataSourceRemoteImp implements PokemonDataSourceRemote{


  @override
  Future<PokemonEntitie> getPokemon(String url) async{
  
    final response = await Dio().get(url);
    return PokemonEntitie.fromJson(response.data);

  }

  @override
  Future<List<PokemonCallEntitie>> getURLListPokemon() async{
   try {
      final response = await Dio().get('https://pokeapi.co/api/v2/pokemon/?offset=20&limit=150');
      final responseMap = response.data['results']; 
      return 
       [...responseMap.map((pokemon) => PokemonCallEntitie.fromJson(pokemon))];
      
    } catch (e) {
      print(e);
    }

    return [];
  }
}
