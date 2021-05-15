import 'package:flutter/material.dart';

class NearbyPage extends StatelessWidget {
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
              title: Text('Nearby Page'),
              background: Image.asset(
                'assets/destinasi/situ.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          // SliverList(),
          // SliverFillRemaining(
          //   child: Text('hy'),
          // ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                //print(_nearbyListItem.length);
                return _nearbyListItem[index];
              },
              childCount: _nearbyListItem.length,
            ),
          ),
        ],
      ),
    );
  }
}

List<NearbyList> _nearbyListItem = [
  NearbyList(title: 'Pantai Membuku'),
  NearbyList(title: 'Benteng Lipu'),
  NearbyList(title: 'Danau Mata Rombia'),
];

class NearbyList extends StatelessWidget {
  const NearbyList({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: ListTile(
        leading: Icon(Icons.icecream),
        title: Text(title),
        subtitle: Text('Ini baru permulaan'),
        trailing: Icon(Icons.arrow_right_alt_outlined),
      ),
    );
  }
}
