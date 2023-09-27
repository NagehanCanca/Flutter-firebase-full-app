import 'package:equatable/equatable.dart';

import '../utility/base/base_firebase_model.dart';


class characters extends Equatable with IdModel, BaseFirebaseModel<characters>{
  //
  characters({
    this.category,
    this.categoryId,
    this.name,
    this.image,
    this.id,
  });

  final String? category;
  final String? categoryId;
  final String? name;
  final String? image;
  @override
  final String? id;

  @override
  List<Object?> get props => [category, categoryId, name, image, id];

  characters copyWith({
    String? category,
    String? categoryId,
    String? name,
    String? image,
    String? id,
  }) {
    return characters(
      category: category ?? this.category,
      categoryId: categoryId ?? this.categoryId,
      name: name ?? this.name,
      image: image ?? this.image,
      id: id?? this.id,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'category': category,
      'categoryId': categoryId,
      'name': name,
      'image': image,
      'id': id,
    };
  }

  @override
  characters fromJson(Map<String, dynamic> json) {
    return characters(
      category: json['category'] as String?,
      categoryId: json['categoryId'] as String?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      id: json['id'] as String?,
    );
  }
}