import 'package:flutter/material.dart';
import 'package:primer_aplicacion/screens/detail/widgets/card_image_list.dart';
import 'package:primer_aplicacion/screens/detail/widgets/description_place.dart';
import 'package:primer_aplicacion/screens/detail/widgets/review_list.dart';
import 'package:primer_aplicacion/widgets/header/header_appbar.dart';

class DetailPlace extends StatefulWidget {
  const DetailPlace({Key? key}) : super(key: key);

  @override
  State<DetailPlace> createState() => _DetailPlaceState();
}

class _DetailPlaceState extends State<DetailPlace> {
  @override
  Widget build(BuildContext context) {
    const String descriptionDumy =
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.';

    return Scaffold(
      body: Stack(
        children: <Widget>[
          ListView(
            children: const [
              DescriptionPlace(
                namePlace: 'Duwili Ela',
                descriptionPlace: descriptionDumy,
                stars: 6,
              ),
              ReviewList(),
            ],
          ),
          const HeaderAppBar(
            title: 'Welcome',
            child: CardImageList(),
          ),
        ],
      ),
    );
  }
}
