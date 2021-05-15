import 'package:flutter/material.dart';

import 'home_widget/destinasi.dart';
import 'home_widget/info_layanan.dart';
import 'home_widget/layanan.dart';
import 'home_widget/wisata.dart';

class Home extends StatelessWidget {
  // const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tour - Prototype'),
        actions: [
          new IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          )
        ],
      ),
      body: ListView(
        children: [
          new Destinasi(),
          const SizedBox(height: 40),
          new Layanan(),
          const SizedBox(height: 40),
          new InfoLayanan(),
          const SizedBox(height: 20),
          new Wisata(),
        ],
      ),
    );
  }
}
