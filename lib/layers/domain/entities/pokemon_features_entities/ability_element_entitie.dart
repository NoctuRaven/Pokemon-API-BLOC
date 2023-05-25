import 'stat_class_entitie.dart';

class AbilityElementEntitie {
  AbilityElementEntitie({
    this.ability,
    this.isHidden,
    this.slot,
  });

  StatClassEntitie? ability;
  bool? isHidden;
  int? slot;

  factory AbilityElementEntitie.fromJson(Map<String, dynamic> json) => AbilityElementEntitie(
        ability: StatClassEntitie.fromJson(json["ability"]),
        isHidden: json["is_hidden"],
        slot: json["slot"],
      );

  Map<String, dynamic> toJson() => {
        "ability": ability!.toJson(),
        "is_hidden": isHidden,
        "slot": slot,
      };
}