import 'package:flutter/material.dart';
import 'package:primer_aplicacion/screens/profile/utils/enum_places.dart';
import 'package:primer_aplicacion/screens/profile/widgets/card_place.dart';
import 'package:primer_aplicacion/screens/profile/widgets/icons_list_to_do.dart';
import 'package:primer_aplicacion/screens/profile/widgets/user_data.dart';
import 'package:primer_aplicacion/widgets/header/header_appbar.dart';

class ProfileTrips extends StatefulWidget {
  const ProfileTrips({Key? key}) : super(key: key);

  @override
  State<ProfileTrips> createState() => _ProfileTripsState();
}

class _ProfileTripsState extends State<ProfileTrips> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(0, 0.5),
      children: [
        HeaderAppBar(
          title: 'Profile',
          size: 450,
          aligmentx: -0.9,
          aligmenty: -0.7,
          child: Column(
            children: const [
              UserData(),
              IconList(),
            ],
          ),
        ),
        SizedBox(
          height: 500,
          child: ListView(
            children: Places.values
                .map((Places place) => Container(
                      margin: EdgeInsets.only(
                          top: place.title == 'Monte negro' ? 0 : 80),
                      child: CardPlace(
                        title: place.title,
                        description: place.description,
                        path: place.path,
                        steps: place.steps,
                      ),
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}
