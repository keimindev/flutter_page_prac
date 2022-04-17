import 'package:board_page/screen/components/llist_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class boxbody extends StatelessWidget {
  const boxbody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: EdgeInsets.all(10),
        child: Column(children: <Widget>[
          Container(
            child: Column(children: <Widget>[
              Container(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      '인기글',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SvgPicture.asset('icons/crown.svg', width: 20),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 1.0, color: Color.fromARGB(255, 204, 109, 221)),
                  borderRadius: BorderRadius.circular(26),
                ),
                child: Column(children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '누가 교수님 좀 기절시켜줘',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '12/08 19:50',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 20),
                    child: Text('얘들아 오늘 날씨가 너무 좋은데~ 난 과제를 하고 있어. 아 진짜 겁나 어렵네 '),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '시각디자인과',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Container(
                        width: 120,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                SvgPicture.asset('icons/picture_cnt.svg',
                                    width: 20),
                                Text('1'),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                SvgPicture.asset('icons/like_cnt.svg',
                                    width: 20),
                                Text('1'),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                SvgPicture.asset('icons/comment_cnt.svg',
                                    width: 20),
                                Text('1'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
            ]),
          ),
          Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  listView(),
                ],
              ))
        ]));
  }
}
