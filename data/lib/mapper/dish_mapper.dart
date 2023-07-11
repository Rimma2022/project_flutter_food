import 'package:domain/model/dish_model.dart';

import '../entity/dish_entity.dart';

abstract class DishMapper {
  static DishModel toModel(DishEntity entity) {
    return DishModel(
      id: entity.id,
      name: entity.name,
      imageUrl: entity.imageUrl,
      price: entity.price,
      description: entity.description,
      ingredients: entity.ingredients,
    );
  }

  static DishEntity toEntity(DishModel model) {
    return DishEntity(
      id: model.id,
      name: model.name,
      imageUrl: model.imageUrl,
      price: model.price,
      description: model.description,
      ingredients: model.ingredients,
    );
  }
}
