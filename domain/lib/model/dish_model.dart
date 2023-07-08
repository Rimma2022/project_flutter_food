import 'package:freezed_annotation/freezed_annotation.dart';

part 'dish_model.freezed.dart';
part 'dish_model.g.dart';

@freezed
class DishModel with _$DishModel {
  const factory DishModel({
    required int id,
    required String name,
    required String imageUrl,
    required double price,
    required String description,
    required List<String> ingredients,
  }) = _DishModel;
  factory DishModel.fromJson(Map<String, dynamic> json) =>
      _$DishModelFromJson(json);
}

// class DishModel {
//   final String id;
//   final String name;
//   final String url;
//   final int cost;
//   final String description;
//   final List<String> ingredients;
//
//   DishModel(
//       {required this.id,
//       required this.name,
//       required this.url,
//       required this.cost,
//       required this.description,
//       required this.ingredients});
//
//   List<Object?> get props => [id, name, url, cost, description, ingredients];
// }
