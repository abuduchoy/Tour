import 'package:flutter/material.dart';

class Wisata extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        ListTile(
          title: const Text(
            'Disekitar Anda',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
          ),
          // subtitle: new Text('Untuk jalan - jalan dadakan dengan teman - teman',
          //     style: TextStyle(fontSize: 12.0)),
          trailing: new IconButton(
            onPressed: () {},
            icon: Icon(Icons.keyboard_arrow_right),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 10, bottom: 8.0),
          width: double.infinity,
          height: 180,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: destinasiList,
          ),
        )
      ],
    ));
  }
}

List<DestinasiList> destinasiList = [
  DestinasiList(
      title: 'Yogyakarta',
      subtitle: 'Warisan Budaya',
      image: 'candi_prambanan.jpg'),
  DestinasiList(title: 'Bandung', subtitle: 'Sejuk Udara', image: 'situ.jpg'),
  DestinasiList(
      title: 'Semarang', subtitle: 'kota sejarah', image: 'kota_lama.jpg'),
  DestinasiList(
      title: 'Lombok', subtitle: 'Pesona Pantai', image: 'selong.jpg'),
];

class DestinasiList extends StatelessWidget {
  const DestinasiList(
      {required this.title, required this.subtitle, required this.image});

  final String title;
  final String subtitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        new Container(
          margin: const EdgeInsets.only(right: 10),
          width: 130,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/destinasi/$image'),
                  fit: BoxFit.cover),
              color: Colors.red,
              borderRadius: BorderRadius.circular(8.0)),
        ),
        new Container(
          decoration: new BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.center,
                colors: [
                  Colors.black.withOpacity(.4),
                  Colors.transparent,
                ]),
          ),
          alignment: Alignment.topLeft,
          height: 180,
          width: 130,
          child: Column(
            children: <Widget>[
              new SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: new Text(
                  subtitle,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: new Text(
                  title,
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
