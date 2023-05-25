import 'stat_class_entitie.dart';

class StatEntitie {
  StatEntitie({
    this.baseStat,
    this.effort,
    this.stat,
  });

  int? baseStat;
  int? effort;
  StatClassEntitie? stat;

  factory StatEntitie.fromJson(Map<String, dynamic> json) => StatEntitie(
        baseStat: json["base_stat"],
        effort: json["effort"],
        stat: StatClassEntitie.fromJson(json["stat"]),
      );

  Map<String, dynamic> toJson() => {
        "base_stat": baseStat,
        "effort": effort,
        "stat": stat!.toJson(),
      };
}