import 'package:flutter/material.dart';

class MorePage extends StatelessWidget {
  /// const User({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Nearby Page'),
      // ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            snap: false,
            floating: false,
            expandedHeight: 160,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Cari tau '),
              background: Image.asset(
                'assets/destinasi/situ.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          // SizedBox(height: 20),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                //print(_nearbyListItem.length);
                return _moreListItem[index];
              },
              childCount: _moreListItem.length,
            ),
          ),
        ],
      ),
    );
  }
}

List<MoreList> _moreListItem = [
  MoreList(title: 'Beri Bintang', icon: Icons.star),
  MoreList(title: 'Bagikan Aplikasi', icon: Icons.share),
  MoreList(title: 'Tentang Kami', icon: Icons.info_outline),
];

class MoreList extends StatelessWidget {
  const MoreList({required this.title, required this.icon});

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        // subtitle: Text('Ini baru permulaan'),
        trailing: Icon(Icons.chevron_right_outlined),
      ),
    );
  }
}
