import 'package:flutter/material.dart';

enum ColorTypes {
  normal,
  fire,
  water,
  grass,
  flying,
  fighting,
  poison,
  electric,
  ground,
  rock,
  psychic,
  ice,
  bug,
  ghost,
  steel,
  dragon,
  dark,
  fairy,
}



  List<Color>? getColorsPokemon(String typeP) {
    Map<String, List<Color>> colorTypes = {
      'normal': [Colors.blueGrey, Colors.grey],
      'fire': [Colors.red, Colors.redAccent],
      'water': [Color.fromARGB(255, 0, 97, 177), Colors.blueAccent],
      'grass': [Colors.green, Colors.greenAccent],
      'flying': [Color.fromARGB(255, 137, 199, 250), Color.fromARGB(255, 97, 153, 250)],
      'fighting': [Color.fromARGB(255, 251, 31, 16), Colors.red],
      'poison': [Colors.purple, Colors.purpleAccent],
      'electric': [Colors.yellow, Colors.yellowAccent],
      'ground': [Colors.brown, Colors.yellow],
      'rock': [Colors.brown, Color.fromARGB(255, 130, 110, 102)],
      'psychic': [Color.fromARGB(255, 174, 48, 176), Color.fromARGB(255, 196, 68, 255)],
      'ice': [Colors.blue, Colors.blueAccent],
      'bug': [Colors.green, Colors.greenAccent],
      'ghost': [Colors.deepPurple, Colors.deepPurpleAccent],
      'steel': [Color.fromARGB(255, 207, 207, 207), Color.fromARGB(255, 130, 130, 130)],
      'dragon': [Colors.blue, Colors.blueAccent],
      'dark': [Color.fromARGB(255, 40, 40, 40), Color.fromARGB(255, 0, 0, 0)],
      'fairy': [Color.fromARGB(255, 248, 74, 158), Color.fromARGB(255, 211, 32, 199)],
    };
    for (var type in colorTypes.keys) {
      if (type == typeP) {
        return colorTypes[type];
      }
    }
  }