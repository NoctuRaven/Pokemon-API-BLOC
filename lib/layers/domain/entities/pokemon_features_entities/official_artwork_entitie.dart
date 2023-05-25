class OfficialArtworkEntitie {
  OfficialArtworkEntitie({
    this.frontDefault,
  });

  String? frontDefault;

  factory OfficialArtworkEntitie.fromJson(Map<String, dynamic> json) => OfficialArtworkEntitie(
        frontDefault: json["front_default"],
      );

  Map<String, dynamic> toJson() => {
        "front_default": frontDefault,
      };
}
