import 'package:domain/repository/dish_repository.dart';
import 'package:domain/usecases/usecase.dart';

import '../model/dish_model.dart';

class FetchAllDishesUseCase
    implements FutureUseCase<NoParams, List<DishModel>> {
  final DishRepository _dishRepository;

  FetchAllDishesUseCase({
    required DishRepository dishRepository,
  }) : _dishRepository = dishRepository;

  @override
  Future<List<DishModel>> execute(NoParams input) async {
    return await _dishRepository.fetchAllDishes();
  }
}
