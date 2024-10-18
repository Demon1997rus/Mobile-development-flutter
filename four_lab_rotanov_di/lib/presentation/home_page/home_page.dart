import 'package:first_lab_rotanov_di/domain/models/card.dart';
import 'package:first_lab_rotanov_di/presentation/detail_page/details_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

part 'card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Color _color = Colors.orangeAccent;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _color,
        title: Text(widget.title),
      ),
      body: const Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    final data = [
      CardData('Bridge over the river',
          imageUrl:
              'https://avatars.mds.yandex.net/get-mpic/4529531/img_id226490233354577725.jpeg/orig'),
      CardData(
        'Leopard in the Colchester Zoo',
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/b/b8/Leopard_in_the_Colchester_Zoo.jpg',
      ),
      CardData(
        'Reflected Glory',
        imageUrl:
            'https://avatars.mds.yandex.net/i?id=1bea43c9449309793c0f626721029e3c_l-9598980-images-thumbs&n=13',
      ),
      CardData(
        'Butterflies',
        imageUrl:
            'https://avatars.mds.yandex.net/i?id=e27c0aeb6bdd2b252366c45698517d4872438062-9065825-images-thumbs&n=13',
      ),
      CardData(
        'Horses, stallions, three',
        imageUrl:
            'https://images.wallpaperscraft.com/image/single/horses_stallions_three_78426_3840x2400.jpg',
      ),
      CardData(
        'Kittens',
        imageUrl:
            'https://avatars.mds.yandex.net/i?id=0b9315290af2bf68938107ccd369ee7ad084fd7f9594cd2f-12593547-images-thumbs&n=13',
      ),
      CardData(
        'Forest landscape',
        imageUrl:
            'https://avatars.mds.yandex.net/i?id=3d2b03de77e5d214c4bff846b4bb6ef9-4451422-images-thumbs&n=13',
      ),
      CardData(
        'Mountains Hills Scenic Trees Forest',
        imageUrl:
            'https://avatars.mds.yandex.net/i?id=90543b123c46e954eb06593060ef02fee493ff46-5325638-images-thumbs&n=13',
      ),
      CardData(
        'Dolphin Games',
        imageUrl:
            'https://avatars.mds.yandex.net/i?id=eb9c4fb7fefbd6a6d4ff4fe557a7bb9600c4c5d3-7753204-images-thumbs&n=13',
      ),
      CardData(
        'San francisco golden gate bridge',
        imageUrl:
            'https://avatars.mds.yandex.net/i?id=685c954419f148bb6333dca4b926e4b7865fc465-7040874-images-thumbs&n=13',
      ),
      CardData(
        'Madeira Island',
        imageUrl:
            'https://avatars.mds.yandex.net/i?id=5210b9f92d8ba85e093e5629bf3fb4f757fb9b5f-10385077-images-thumbs&n=13',
      ),
      CardData(
        'False Creek Vancouver',
        imageUrl:
            'https://avatars.mds.yandex.net/i?id=a8b45cc5b58ce10155ba7ebe2821ae534cb6688d-5473904-images-thumbs&n=13',
      ),
      CardData(
        'Winter Wallpaper',
        imageUrl:
            'https://avatars.mds.yandex.net/i?id=459543c7297a92dcb45378b4d03cd97a075724d7-9701815-images-thumbs&n=13',
      ),
      CardData(
        'Eiffel tower',
        imageUrl:
            'https://avatars.mds.yandex.net/i?id=24640b321dbbac8b3613366b0d013bb70eda9e26-5873671-images-thumbs&n=13',
      ),
      CardData(
        'Green Road',
        imageUrl:
            'https://avatars.mds.yandex.net/i?id=2693f29db0356ef5ec3ca6b91cec37252f45d9ae-11459613-images-thumbs&n=13',
      ),
      CardData(
        'Colorful Purple Blue Clouds',
        imageUrl:
            'https://avatars.mds.yandex.net/i?id=896360495f64b86399c57d4dfe82c9d95d3ac2f9-10933600-images-thumbs&n=13',
      ),
      CardData(
        'Beautiful spring flowering tree',
        imageUrl:
            'https://avatars.mds.yandex.net/i?id=506e15ed624ace93b2479010964f8c83cd32e55f-4824334-images-thumbs&n=13',
      ),
      CardData(
        'Rainbow',
        imageUrl:
            'https://avatars.mds.yandex.net/i?id=dd5793f861ce49385c42968cdf6fd324c6b7c88d-12650537-images-thumbs&n=13',
      ),
      CardData(
        'Cherry',
        imageUrl:
            'https://avatars.mds.yandex.net/i?id=189cd69331faaa397018cbfa9257de67f24f3676f2c00ecd-12920410-images-thumbs&n=13',
      ),
      CardData(
        'Apples',
        imageUrl:
            'https://avatars.mds.yandex.net/i?id=17279829f235d1042ba0f7694b3305d8-5887331-images-thumbs&n=13',
      ),
    ];

    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: data
              .map(
                (e) => _Card.fromData(
                  e,
                  onLike: (String title, bool isLiked) =>
                      _showSnackBar(context, title, isLiked),
                  onTap: () => _navToDetails(context, e),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

void _navToDetails(BuildContext context, CardData data) {
  Navigator.push(
      context, CupertinoPageRoute(builder: (context) => DetailsPage(data)));
}

void _showSnackBar(BuildContext context, String title, bool isLiked) {
  WidgetsBinding.instance.addPostFrameCallback((_) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        'Image $title ${isLiked ? 'liked!' : 'disliked :('}',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      backgroundColor: Colors.orangeAccent,
      duration: const Duration(seconds: 1),
    ));
  });
}
