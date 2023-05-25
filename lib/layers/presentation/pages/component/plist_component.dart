import 'package:flutter/material.dart';
import 'package:pokedex_bloc/layers/domain/entities/pokemon_entitie.dart';
import 'package:pokedex_bloc/layers/presentation/pages/pokemon_page.dart';

import 'get_pokemon_color.dart';




class PListComponent extends StatelessWidget {
  final PokemonEntitie pokemon;
  const PListComponent(this.pokemon, {Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => PokemonStatus(pokemon),
      )
      ),
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              )
            ],
            color: Colors.white,
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            border: Border.all(
              color: Colors.black,
              width: 1,
            )),
        child: Stack(children: [
          Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              // color: pokemon.getColorsPokemon(pokemon.types![0]['type']['name'])![1],
               color: getColorsPokemon(pokemon.types![0]['type']['name'])![1],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(9),
                topRight: Radius.circular(9),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '#${pokemon.id.toString()}',
                        style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
                      ),
                      Text(
                        pokemon.name.toString().toUpperCase(),
                        style: TextStyle(fontFamily: 'Saira-Italic'),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 5),
                        height: 55,
                        width: 90,
                        child: ListView.builder(
                          itemCount: pokemon.types!.length,
                          itemBuilder: (ctx, index) => Container(
                            decoration: BoxDecoration(
                              border: Border.all(width: 0.2),
                              borderRadius: BorderRadius.circular(5),
                              // color: pokemon.getColorsPokemon(pokemon.types![index]['type']['name'])![0],
                              color: getColorsPokemon(pokemon.types![index]['type']['name'])![0]
                            ),
                            padding: EdgeInsets.all(3),
                            margin: EdgeInsets.all(2),
                            child: Text(
                              pokemon.types![index]['type']['name'].toString().toUpperCase(),
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white, fontFamily: 'PressStart2P', fontSize: 9),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Container(
                width: 85,
                height: 85,
                child: Stack(children: [
                  Image.asset(
                    'lib\\assets\\images\\pokeball_icon.png',
                    fit: BoxFit.cover,
                    color: Colors.black.withOpacity(0.1),
                  ),
                  Image.network(
                    pokemon.sprites!.other!.officialArtwork!.frontDefault.toString(),
                    fit: BoxFit.cover,
                  ),
                ]),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
