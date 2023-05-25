class StatClassEntitie {
  StatClassEntitie({
    this.name,
    this.url,
  });

  String? name;
  String? url;

  factory StatClassEntitie.fromJson(Map<String, dynamic> json) => StatClassEntitie(
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
      };
}

