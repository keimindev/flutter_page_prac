import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class iconList extends StatefulWidget {
  @override
  _iconState createState() => _iconState();
}

class _iconState extends State<iconList> {
  final List<String> iconsArr = <String>[
    'icons/picture_cnt.svg',
    'icons/like_cnt.svg',
    'icons/comment_cnt.svg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 110,
        height: 20,
        margin: EdgeInsets.all(10),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: iconsArr.length,
            itemBuilder: (context, index) {
              return Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Row(children: <Widget>[
                    SvgPicture.asset('${iconsArr[index]}', width: 20),
                    Text('2')
                  ]));
            }));
  }
}
