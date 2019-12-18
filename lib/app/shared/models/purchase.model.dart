import 'package:nubuy/app/shared/models/purchase_costumer.model.dart';

class PurchaseModel {
  final bool success;
  final String errorMessage;
  final CustomerModel customer;

  const PurchaseModel({
    this.success,
    this.errorMessage,
    this.customer,
  });

  factory PurchaseModel.fromJson(Map<String, dynamic> json) => PurchaseModel(
    success: json["success"],
    errorMessage: json["errorMessage"],
    customer: CustomerModel.fromJson(json["customer"]),
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "errorMessage": errorMessage,
    "customer": customer.toJson(),
  };
}
