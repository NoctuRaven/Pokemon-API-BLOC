import '../../domain/entities/pokemon_call_entitie.dart';
import '../../domain/entities/pokemon_entitie.dart';
import '../../domain/repositories/Pokemon_datasource_remote.dart';
import '../../domain/repositories/pokemon_repository.dart';
import '../datasources/remote/get_pokemon_datasource_remote_imp.dart';

class PokemonRepositoryImp extends PokemonRepository{


  final PokemonDataSourceRemote _dataSource = PokemonDataSourceRemoteImp();

  PokemonRepositoryImp();

  @override
  Future<List<PokemonCallEntitie>> getURLlist() async {

    return _dataSource.getURLListPokemon();
  }
  
  @override
  Future<List<PokemonEntitie>> getPokemon() async{
    return  await (Future.wait((await getURLlist()).map((e){
      return  _dataSource.getPokemon(e.url);}).toList()));
  }


}
