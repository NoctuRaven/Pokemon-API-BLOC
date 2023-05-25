import 'package:flutter/material.dart';

import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:pokedex_bloc/layers/domain/entities/pokemon_entitie.dart';

import 'component/get_pokemon_color.dart';

class PokemonStatus extends StatelessWidget {
  final PokemonEntitie pokemon;
  const PokemonStatus(this.pokemon, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pokedex'),
        backgroundColor:
            getColorsPokemon(pokemon.types![0]['type']['name'])![1],
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '#${pokemon.id}',
              style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic),
            ),
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color:
                      getColorsPokemon(pokemon.types![0]['type']['name'])![1],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                height: MediaQuery.of(context).size.height * 0.4,
                child: Image.network(
                  pokemon.sprites!.other!.officialArtwork!.frontDefault
                      .toString(),
                )),
            SizedBox(
              height: 25,
            ),
            Text(
              pokemon.name.toString().toUpperCase(),
              style: TextStyle(fontSize: 40, fontFamily: 'Saira-Italic'),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 5),
              height: 40,
              padding: EdgeInsets.only(left: 70, right: 65),
              width: MediaQuery.of(context).size.height,
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(
                  width: 50,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: pokemon.types!.length,
                itemBuilder: (ctx, index) => Container(
                  width: 110,
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.2),
                    borderRadius: BorderRadius.circular(20),
                    color: getColorsPokemon(
                        pokemon.types![index]['type']['name'])![0],
                  ),
                  padding: EdgeInsets.all(3),
                  margin: EdgeInsets.all(2),
                  child: Center(
                    child: Text(
                      pokemon.types![index]['type']['name']
                          .toString()
                          .toUpperCase(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'PressStart2P',
                          fontSize: 12),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 90, right: 90),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        '${(pokemon.weight! * 0.1).toStringAsFixed(1)} KG',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text('Weight')
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '${(pokemon.height! * 0.1).toStringAsFixed(1)} M',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text('Height')
                    ],
                  )
                ],
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: <Widget>[
                    LinearPercentIndicator(
                      leading: const Text('HP'),
                      center: Text('${pokemon.stats![0].baseStat}/200'),
                      width: 250,
                      alignment: MainAxisAlignment.spaceAround,
                      lineHeight: 15.0,
                      percent: pokemon.stats![0].baseStat! / 200,
                      progressColor: Colors.red,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    LinearPercentIndicator(
                      leading: const Text('ATK'),
                      center: Text('${pokemon.stats![1].baseStat}/200'),
                      width: 250,
                      lineHeight: 15.0,
                      percent: pokemon.stats![1].baseStat! / 200,
                      progressColor: Colors.orange,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    LinearPercentIndicator(
                      leading: const Text('DEF'),
                      center: Text('${pokemon.stats![2].baseStat}/200'),
                      width: 250,
                      lineHeight: 15.0,
                      percent: pokemon.stats![2].baseStat! / 200,
                      progressColor: Colors.blue,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    LinearPercentIndicator(
                      leading: const Text('SPA'),
                      center: Text('${pokemon.stats![3].baseStat}/200'),
                      width: 250,
                      lineHeight: 15.0,
                      percent: pokemon.stats![3].baseStat! / 200,
                      progressColor: Colors.blueGrey,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    LinearPercentIndicator(
                      leading: const Text('SPD'),
                      center: Text('${pokemon.stats![4].baseStat}/200'),
                      width: 250,
                      lineHeight: 15.0,
                      percent: pokemon.stats![4].baseStat! / 200,
                      progressColor: Colors.green,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    LinearPercentIndicator(
                      leading: const Text('SPE'),
                      center: Text('${pokemon.stats![5].baseStat}/200'),
                      width: 250,
                      lineHeight: 15.0,
                      percent: pokemon.stats![5].baseStat! / 200,
                      progressColor: Colors.purple,
                    ),
                  ],
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
