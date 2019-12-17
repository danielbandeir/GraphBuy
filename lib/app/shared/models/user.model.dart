class UserModel {
  final String id;
  final String name;
  final int balance;

  const UserModel({this.id, this.name, this.balance});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      balance: json['balance']
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'balance': balance
  };
}