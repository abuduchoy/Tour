import 'package:flutter/material.dart';

class InfoLayanan extends StatelessWidget {
  // const InfoLayanan({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 95.0,
          padding: const EdgeInsets.only(right: 8.0),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.red.shade300,
                          Colors.red.shade800,
                        ]),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  // padding: EdgeInsets.all(8.0),
                  margin: EdgeInsets.only(left: 4.0),
                  height: 95.0,
                  width: 250.0,
                  child: Text('Info')),
              Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.red.shade300,
                          Colors.red.shade800,
                        ]),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  // padding: EdgeInsets.all(8.0),
                  margin: EdgeInsets.only(left: 8.0),
                  height: 120.0,
                  width: 250.0,
                  child: Text('Info')),
            ],
          ),
        ),
      ],
    );
  }
}
