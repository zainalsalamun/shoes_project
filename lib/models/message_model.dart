import 'package:shoes_project/models/product_model.dart';

class MessageModel {
  int id;
  String message;
  int userId;
  String userName;
  String userImage;
  bool isFromUSer;
  ProductModel product;
  DateTime createdAt;
  DateTime updatedAt;

  MessageModel({
    this.message,
    this.userId,
    this.userImage,
    this.userName,
    this.isFromUSer,
    this.product,
    this.createdAt,
    this.updatedAt,
    this.id,
  });

  MessageModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    userId = json['userId'];
    userName = json['userName'];
    userImage = json['userImage'];
    isFromUSer = json['isFromUser'];
    product = json['product'] == {}
        ? UninitializedProductModel()
        : ProductModel.fromJson(json['product']);
    createdAt = DateTime.parse(json['createdAt']);
    updatedAt = DateTime.parse(json['updatedAt']);
  }
  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'userId': userId,
      'userName': userName,
      'userImage': userImage,
      'isFromUser': isFromUSer,
      'product': product is UninitializedProductModel ? {} : product.toJson(),
      'createdAt': createdAt.toString(),
      'updatedAt': updatedAt.toString(),
    };
  }
}
