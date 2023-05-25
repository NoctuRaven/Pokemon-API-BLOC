import 'dart:convert';

PokemonCallEntitie pokemonCallEntitieFromJson(String str) => PokemonCallEntitie.fromJson(json.decode(str));

String pokemonCallEntitieToJson(PokemonCallEntitie data) => json.encode(data.toJson());

class PokemonCallEntitie {
  PokemonCallEntitie({
    required this.name,
    required this.url,
  });

  String name;
  String url;

  factory PokemonCallEntitie.fromJson(Map<String, dynamic> json) => PokemonCallEntitie(
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
      };
}
