import '../entities/pokemon_call_entitie.dart';
import '../entities/pokemon_entitie.dart';

abstract class PokemonRepository {
  Future<List<PokemonCallEntitie>> getURLlist();

  Future<List<PokemonEntitie>> getPokemon();
}
