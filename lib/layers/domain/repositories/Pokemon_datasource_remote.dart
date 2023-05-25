
import '../entities/pokemon_call_entitie.dart';
import '../entities/pokemon_entitie.dart';

abstract class PokemonDataSourceRemote{
  Future<List<PokemonCallEntitie>> getURLListPokemon();
  Future<PokemonEntitie> getPokemon(String url);
}