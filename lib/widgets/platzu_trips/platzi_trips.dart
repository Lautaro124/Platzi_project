import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:primer_aplicacion/screens/detail/detail.dart';
import 'package:primer_aplicacion/screens/profile/profile_trips.dart';
import 'package:primer_aplicacion/screens/search/search_place.dart';

class PlatziTrips extends StatefulWidget {
  const PlatziTrips({Key? key}) : super(key: key);

  @override
  State<PlatziTrips> createState() => _PlatziTripsState();
}

class _PlatziTripsState extends State<PlatziTrips> {
  int indexTap = 0;

  void onTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple,
        ),
        child: CupertinoTabScaffold(
          tabBuilder: (BuildContext context, int index) {
            switch (index) {
              case 0:
                return CupertinoTabView(
                  builder: (BuildContext context) => const DetailPlace(),
                );

              case 1:
                return CupertinoTabView(
                  builder: (BuildContext context) => const SearchPlaces(),
                );

              case 2:
                return CupertinoTabView(
                  builder: (BuildContext context) => const ProfileTrips(),
                );

              default:
                return CupertinoTabView(
                  builder: (BuildContext context) => const DetailPlace(),
                );
            }
          },
          tabBar: CupertinoTabBar(
            onTap: onTapped,
            currentIndex: indexTap,
            backgroundColor: Colors.transparent,
            height: 70,
            items: const [
              BottomNavigationBarItem(
                label: '',
                icon: Icon(
                  Icons.home,
                  color: Colors.indigo,
                ),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Icon(
                  Icons.search,
                  color: Colors.indigo,
                ),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Icon(
                  Icons.person,
                  color: Colors.indigo,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
