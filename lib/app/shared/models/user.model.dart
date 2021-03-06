
import 'package:hive/hive.dart';

part 'user.model.g.dart';

@HiveType()
class UserModel extends HiveObject{
  @HiveField(0)
  final String id;
  @HiveField(1)
  String name;
  @HiveField(2)
  int balance;
  @HiveField(3)
  bool isVisible;

  UserModel({this.id, this.name, this.balance, this.isVisible});

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