import 'package:first_lab_rotanov_di/data/repositories/api_interface.dart';
import 'package:first_lab_rotanov_di/domain/models/card.dart';

class MockRepository extends ApiInterface {
  @override
  Future<List<CardData>?> loadData({OnErrorCallback? onError}) async {
    return [
      CardData(
        'Bridge over the river',
        imageUrl:
            'https://avatars.mds.yandex.net/get-mpic/4529531/img_id226490233354577725.jpeg/orig',
        descriptionText: "",
      ),
      CardData(
        'Leopard in the Colchester Zoo',
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/b/b8/Leopard_in_the_Colchester_Zoo.jpg',
        descriptionText: "",
      ),
      CardData(
        'Reflected Glory',
        imageUrl:
            'https://avatars.mds.yandex.net/i?id=1bea43c9449309793c0f626721029e3c_l-9598980-images-thumbs&n=13',
        descriptionText: "",
      ),
    ];
  }
}
