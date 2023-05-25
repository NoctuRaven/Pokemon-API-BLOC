class DreamWorldEntitie {
  DreamWorldEntitie({
    this.frontDefault,
    this.frontFemale,
  });

  String? frontDefault;
  dynamic? frontFemale;

  factory DreamWorldEntitie.fromJson(Map<String, dynamic> json) => DreamWorldEntitie(
        frontDefault: json["front_default"],
        frontFemale: json["front_female"],
      );

  Map<String, dynamic> toJson() => {
        "front_default": frontDefault,
        "front_female": frontFemale,
      };
}