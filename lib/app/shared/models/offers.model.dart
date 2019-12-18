import 'package:nubuy/app/shared/models/product.model.dart';

class OfferModel {
  final String id;
  final int price;
  final ProductModel product;

  const OfferModel({
    this.id,
    this.price,
    this.product,
  });

  factory OfferModel.fromJson(Map<String, dynamic> json) => OfferModel(
    id: json["id"],
    price: json["price"],
    product: ProductModel.fromJson(json["product"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "price": price,
    "product": product.toJson(),
  };

  static List<OfferModel> fromJsonList(List list){
    if(list == null) return null;
    return list
        .map((item) => OfferModel.fromJson(item))
        .toList();
  }
}

