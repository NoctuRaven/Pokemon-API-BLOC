import 'dream_world_entitie.dart';
import 'home_entitie.dart';
import 'official_artwork_entitie.dart';
class OtherEntitie {
  OtherEntitie({
    this.dreamWorld,
    this.home,
    this.officialArtwork,
  });

  DreamWorldEntitie? dreamWorld;
  HomeEntitie? home;
  OfficialArtworkEntitie? officialArtwork;

  factory OtherEntitie.fromJson(Map<String, dynamic> json) => OtherEntitie(
        dreamWorld: DreamWorldEntitie.fromJson(json["dream_world"]),
        home: HomeEntitie.fromJson(json["home"]),
        officialArtwork: OfficialArtworkEntitie.fromJson(json["official-artwork"]),
      );

  factory OtherEntitie.empty() => OtherEntitie(
        dreamWorld: DreamWorldEntitie.fromJson({"dream_world": "dream_world"}),
        home: HomeEntitie.fromJson({"dream_world": "dream_world"}),
        officialArtwork: OfficialArtworkEntitie.fromJson({"dream_world": "dream_world"}),
      );

  Map<String, dynamic> toJson() => {
        "dream_world": dreamWorld!.toJson(),
        "home": home!.toJson(),
        "official-artwork": officialArtwork!.toJson(),
      };
}