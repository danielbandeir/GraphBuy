class ProductModel {
  final String id;
  final String name;
  final String description;
  final String image;

  const ProductModel({
    this.id,
    this.name,
    this.description,
    this.image,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    id: json["id"],
    name: json["name"],
    description: json["description"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "description": description,
    "image": image,
  };
}