import 'package:hive/hive.dart';
import 'package:nubuy/app/shared/models/product.model.dart';

part 'offers.model.g.dart';

@HiveType()
class OfferModel extends HiveObject {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final int price;
  @HiveField(2)
  final ProductModel product;

  OfferModel({
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

