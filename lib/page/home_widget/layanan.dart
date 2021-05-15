import 'package:flutter/material.dart';

class Layanan extends StatelessWidget {
  // const Layanan({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      shrinkWrap: true,
      children: _menuLayananItem,
    );
  }
}

List<MenuLayananItems> _menuLayananItem = [
  MenuLayananItems(
    title: 'Budaya',
    icon: Icons.local_movies,
    colorBox: Colors.blue,
    colorIcon: Colors.white,
  ),
  MenuLayananItems(
    title: 'Wisata',
    icon: Icons.holiday_village,
    colorBox: Colors.blue.shade800,
    colorIcon: Colors.white,
  ),
  MenuLayananItems(
    title: 'Layanan \nPublik',
    icon: Icons.public,
    colorBox: Colors.purple,
    colorIcon: Colors.white,
  ),
  MenuLayananItems(
    title: 'Belajar',
    icon: Icons.book,
    colorBox: Colors.green.shade300,
    colorIcon: Colors.white,
  ),
  MenuLayananItems(
    title: 'Kuliner',
    icon: Icons.local_dining,
    colorBox: Colors.orange,
    colorIcon: Colors.white,
  ),
  MenuLayananItems(
    title: 'Sejarah',
    icon: Icons.history,
    colorBox: Colors.grey,
    colorIcon: Colors.white,
  ),
  MenuLayananItems(
    title: 'E-Lapor',
    icon: Icons.chat_bubble,
    colorBox: Colors.pink,
    colorIcon: Colors.white,
  ),
  MenuLayananItems(
    title: 'Lainnya',
    icon: Icons.apps,
    colorBox: Colors.red,
    colorIcon: Colors.white,
  ),
];

class MenuLayananItems extends StatelessWidget {
  MenuLayananItems(
      {required this.title,
      required this.icon,
      required this.colorBox,
      required this.colorIcon});

  final String title;
  final IconData icon;
  final Color colorBox;
  final Color colorIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 38.0,
          height: 38.0,
          decoration: BoxDecoration(color: colorBox, shape: BoxShape.circle),
          child: Icon(
            icon,
            color: colorIcon,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2.0),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 10.5),
          ),
        )
      ],
    );
  }
}
