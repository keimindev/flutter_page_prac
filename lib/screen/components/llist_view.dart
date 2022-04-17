import 'package:board_page/screen/components/icons.dart';
import 'package:flutter/material.dart';

class listView extends StatefulWidget {
  @override
  _listView createState() => _listView();
}

class _listView extends State<listView> {
  //const listView({Key? key}) : super(key: key);

  final List<String> titleList = <String>[
    '전공 수업 질문',
    '다들 노트북 어떤 제품 많이 써?',
    '악기 브랜드 뭐써?',
    '통닭집 살인사건 추가 현장 검증',
  ];

  final List<String> majorList = <String>[
    '스포츠레저학과',
    '시각디자인과',
    '실용음악학과',
    '법학과',
  ];

  final List<String> descList = <String>[
    '스레과 다들 전공과목 어떤거 들어? 다른 곳은 어떨지 궁금하다 많이 다르려나',
    '내 사촌동생이 이번에 미대 입학해서 노트북 궁금해하던데 추천 좀 해주라! 너네가 노트북을 추천해주면 내 동생의 대학생활이 달라질거라 확신함. 나를 위해 이글을 누르고 댓글을 써주는 아량을~',
    '각자 자기 악기랑 브랜드 알려주!',
    '이건 보험사기를 위한 살인사건이야!!! 장고물! 열쇠어딧어?!?',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: titleList.length,
        itemBuilder: (context, index) {
          return Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.only(top: 10, bottom: 20),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 0.2, color: Colors.grey),
                ),
              ),
              child: Column(children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '${titleList[index]}',
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
                  child: Text('${descList[index]}'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '${majorList[index]}',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Container(
                      child: iconList(),
                    ),
                  ],
                ),
              ]));
        });
  }
}
