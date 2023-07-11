import 'package:core/core.dart';
import 'package:data/entity/dish_entity.dart';
import 'package:data/provider/provider.dart';

class ProviderImpl implements Provider {
  final FirebaseFirestore _firestore;

  ProviderImpl(this._firestore);

  @override
  Future<List<DishEntity>> getAllDishes() async {
    final QuerySnapshot<Map<String, dynamic>> respons =
        await _firestore.collection("dishes").get();
    return respons.docs
        .map((doc) => DishEntity.fromJson(
              doc.data(),
            ))
        .toList();
  }
}
