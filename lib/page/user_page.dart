import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class UserPage extends StatelessWidget {
  /// const User({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('Akun'),
        // ),
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // Gambar profil
            child: Container(
              width: double.infinity,
              height: 200,
              child: Container(
                alignment: Alignment(0.0, 2.5),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/destinasi/kota_lama.jpg'),
                  radius: 60,
                ),
              ),
            ),
            // gambar bacground
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
              image: DecorationImage(
                image: AssetImage('assets/destinasi/situ.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // SizedBox(height: 10),
          Container(
            // margin: Aligmen,
            decoration: BoxDecoration(
                // color: Colors.grey,
                // gradient:
                ),
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 25,
                    child: Icon(
                      Icons.phone_android_outlined,
                      size: 25,
                    ),
                  ),
                  CircleAvatar(
                    radius: 25,
                    child: Icon(Icons.message_outlined, size: 25),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: _listProfil,
          ),
        ],
      ),
    ));
  }
}

List<ProfilList> _listProfil = [
  ProfilList(title: 'Nama', subtitle: 'Abdur'),
  ProfilList(title: 'Telo (WA)', subtitle: '08234 9813 979'),
  ProfilList(title: 'Email', subtitle: 'abuduchoy@gmail.com'),
];

class ProfilList extends StatelessWidget {
  const ProfilList({required this.title, required this.subtitle});

  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, bottom: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
        color: Colors.white,
      ),
      child: Container(
        // width: double.infinity,
        height: 60,
        child: Stack(
          children: [
            Container(
              alignment: Alignment(-0.9, -2.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.amber.shade300,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(left: 20, bottom: 13),
              child: Text(
                subtitle,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
