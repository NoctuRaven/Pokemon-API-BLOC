import 'pokemon_features_entities/ability_element_entitie.dart';
import 'pokemon_features_entities/species_entitie.dart';
import 'pokemon_features_entities/stat_entitie.dart';
import 'pokemon_features_entities/sprites_Entitie.dart';


class PokemonEntitie {
  PokemonEntitie({
    this.abilities,
    this.baseExperience,
    this.forms,
    this.gameIndices,
    this.height,
    this.heldItems,
    this.id,
    this.isDefault,
    this.locationAreaEncounters,
    this.moves,
    this.name,
    this.order,
    this.pastTypes,
    this.species,
    this.sprites,
    this.stats,
    this.types,
    this.weight,
  });

  List<AbilityElementEntitie>? abilities;
  int? baseExperience;
  List<dynamic>? forms;
  List<dynamic>? gameIndices;
  int? height;
  List<dynamic>? heldItems;
  int? id;
  bool? isDefault;
  String? locationAreaEncounters;
  List<dynamic>? moves;
  String? name;
  int? order;
  List<dynamic>? pastTypes;
  SpeciesEntitie? species;
  SpritesEntitie? sprites;
  List<StatEntitie>? stats;
  List<Map<String, dynamic>>? types;
  int? weight;




  factory PokemonEntitie.fromJson(Map<String, dynamic> json) => PokemonEntitie(
      abilities: json["abilities"] == null ? [] : List<AbilityElementEntitie>.from(json["abilities"].map((x) => AbilityElementEntitie.fromJson(x))),
      baseExperience: json["base_experience"],
      forms: json["forms"] == null ? [] : List<dynamic>.from(json["forms"].map((x) => x)),
      gameIndices: json["game_indices"] == null ? [] : List<dynamic>.from(json["game_indices"].map((x) => x)),
      height: json["height"],
      weight: json["weight"],
      heldItems: json["held_items"] == null ? [] : List<dynamic>.from(json["held_items"].map((x) => x)),
      id: json["id"],
      isDefault: json["is_default"],
      locationAreaEncounters: json["location_area_encounters"],
      moves: json["moves"] == null ? [] : List<dynamic>.from(json["moves"].map((x) => x)),
      name: json["name"],
      order: json["order"],
      pastTypes: json["past_types"] == null ? [] : List<dynamic>.from(json["past_types"].map((x) => x)),
      species: SpeciesEntitie.fromJson(json["species"]),
      sprites: SpritesEntitie.fromJson(json["sprites"]),
      stats: json["stats"] == null ? [] : List<StatEntitie>.from(json["stats"].map((x) => StatEntitie.fromJson(x))),
      types: json["types"] == null ? [] : List<Map<String, dynamic>>.from(json["types"].map((x) => x)));

  factory PokemonEntitie.empty() => PokemonEntitie(
        abilities: [],
        baseExperience: 0,
        forms: [],
        gameIndices: [],
        height: 0,
        weight: 0,
        heldItems: [],
        id: 0,
        isDefault: false,
        locationAreaEncounters: '',
        moves: [],
        name: '',
        order: 0,
        pastTypes: [],
        species: SpeciesEntitie.fromJson({"species": "species"}),
        sprites: SpritesEntitie.fromJson({"species": "species"}),
        stats: [],
        types: [],
      );

  Map<String, dynamic> toJson() => {
        "abilities": List<dynamic>.from(abilities!.map((x) => x.toJson())),
        "base_experience": baseExperience,
        "forms": List<dynamic>.from(forms!.map((x) => x)),
        "game_indices": List<dynamic>.from(gameIndices!.map((x) => x)),
        "height": height,
        "weight": weight,
        "held_items": List<dynamic>.from(heldItems!.map((x) => x)),
        "id": id,
        "is_default": isDefault,
        "location_area_encounters": locationAreaEncounters,
        "moves": List<dynamic>.from(moves!.map((x) => x)),
        "name": name,
        "order": order,
        "past_types": List<dynamic>.from(pastTypes!.map((x) => x)),
        "species": species!.toJson(),
        "sprites": sprites!.toJson(),
        "stats": List<dynamic>.from(stats!.map((x) => x.toJson())),
        "types": List<dynamic>.from(types!.map((x) => x)),
      };
}