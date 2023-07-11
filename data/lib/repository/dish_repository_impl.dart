import 'package:data/mapper/dish_mapper.dart';
import 'package:domain/model/dish_model.dart';
import 'package:domain/repository/dish_repository.dart';

import '../entity/dish_entity.dart';
import '../provider/provider.dart';

class DishRepositoryImpl implements DishRepository {
  final Provider _provider;
  DishRepositoryImpl({
    required provider,
  }) : _provider = provider;

  @override
  Future<List<DishModel>> fetchAllDishes() async {
    final List<DishEntity> allDishes = await _provider.getAllDishes();
    return allDishes.map((DishEntity e) => DishMapper.toModel(e)).toList();
  }
}
