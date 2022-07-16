enum Places {
  place1(
    title: 'Monte negro',
    description:
        'Hiking, Water fall hunting, Natural bath,\n Scenery & Photography',
    path: 'assets/img/pexels-tetyana-kovyrina-12031047.jpg',
    steps: 'Steps: 123,123,123',
  ),
  place2(
    title: 'Pihy',
    description:
        'Hiking, Water fall hunting, Natural bath,\n Scenery & Photography',
    path: 'assets/img/pexels-red-zeppelin-11891907.jpg',
    steps: 'Steps: 183,126,125',
  ),
  palce3(
    title: 'pichu cufu',
    description:
        'Hiking, Water fall hunting, Natural bath,\n Scenery & Photography',
    path: 'assets/img/pexels-gaetan-thurin-3163895.jpg',
    steps: 'Steps: 129,13,193',
  ),
  place4(
    title: 'kes',
    description:
        'Hiking, Water fall hunting, Natural bath,\n Scenery & Photography',
    path: 'assets/img/pexels-ellie-burgin-12700785.jpg',
    steps: 'Steps: 304,300,203',
  ),
  place5(
    title: 'Ugi elia',
    description:
        'Hiking, Water fall hunting, Natural bath,\n Scenery & Photography',
    path: 'assets/img/pexels-dương-nhân-3155265.jpg',
    steps: 'Steps: 4032,234,503',
  );

  const Places(
      {required this.description,
      required this.path,
      required this.steps,
      required this.title});
  final String title, description, steps, path;
}
