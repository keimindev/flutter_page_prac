import 'package:board_page/screen/components/text_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('예술체육학과'),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.grey,
            iconSize: 25.0,
            onPressed: () {},
          ),
          actions: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 5, right: 10),
              decoration: BoxDecoration(
                border: Border.all(width: 0.5, color: Colors.grey),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Row(children: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                  color: Colors.grey,
                  iconSize: 25.0,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                  color: Colors.grey,
                  iconSize: 25.0,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications),
                  color: Colors.grey,
                  iconSize: 25.0,
                ),
                SizedBox(width: 5),
              ]),
            )
          ]),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(child: const boxbody()),
      bottomNavigationBar: navbar(context),
    );
  }
}

//bottom nav
Container navbar(BuildContext context) {
  return Container(
    height: 60,
    margin: EdgeInsets.all(10),
    decoration: BoxDecoration(
      border: Border.all(width: 0.5, color: Colors.grey),
      borderRadius: BorderRadius.circular(50),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        IconButton(
            icon: SvgPicture.asset('icons/home.svg',
                width: 30, color: Colors.grey),
            onPressed: () {}),
        IconButton(
            icon: SvgPicture.asset('icons/new_chat.svg',
                width: 60, color: Colors.grey),
            onPressed: () {}),
        IconButton(
            icon: SvgPicture.asset('icons/chat.svg',
                width: 50, color: Colors.grey),
            onPressed: () {}),
        IconButton(
            icon: SvgPicture.asset('icons/view_list.svg',
                width: 30, color: Colors.grey),
            onPressed: () {}),
        IconButton(
            icon: SvgPicture.asset('icons/person.svg',
                width: 30, color: Colors.grey),
            onPressed: () {}),
      ],
    ),
  );
}
