class CustomerModel {
  final String id;
  final int balance;

  const CustomerModel({
    this.id,
    this.balance,
  });

  factory CustomerModel.fromJson(Map<String, dynamic> json) => CustomerModel(
    id: json["id"],
    balance: json["balance"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "balance": balance,
  };
}