class Role {
  String id;
  String name;
  String route;
  String? image;

  Role({
    required this.id,
    required this.name,
    required this.route,
    this.image,
  });

  factory Role.fromJson(Map<String, dynamic> json) => Role(
    id: json["id"],
    name: json["name"],
    route: json["route"],
    image: json["Image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "route": route,
    "Image": image,
  };
}
