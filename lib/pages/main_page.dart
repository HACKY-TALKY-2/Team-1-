import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:namu/controllers/station_controller.dart';
import 'package:namu/widgets/main_drawer.dart';
import 'package:namu/widgets/tree_app_bar.dart';

const tList = [
  {
    "text": "열어분,, 오늘 정말 추우니까 따듯하게 입고 dddddddddddddddd나오세요. 🥶🥶",
    "emotion": "🥶",
    "color": "9DD6B5",
  },
  {
    "text": "지금 롱패딩 입기에는 조금 이른가요?",
    "emotion": "🤔",
    "color": "9DD6B5",
  },
  {
    "text": "오늘 지하철 파업한다는 거 참고하세요!",
    "emotion": "💡",
    "color": "DCE8E1",
  },
  {
    "text": "오늘도 다들 화이팅입니다!",
    "emotion": "🤔",
    "color": "9DD6B5",
  },
  {
    "text": "즐거운 목요일이네요....",
    "emotion": "🤔",
    "color": "9DD6B5",
  }
];

class MainPage extends StatelessWidget {
  final controller = Get.put(StationController());

  @override
  Widget build(BuildContext context) {
    const tmpList = tList;
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      drawer: MainDrawer(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            expandedHeight: size.height * 0.42,
            flexibleSpace: FlexibleSpaceBar(
              background: TreeAppBar(),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                    //color: Color(0xffECECEC),
                    alignment: Alignment.center,
                    height: 80, //size.height * 0.1,
                    margin: const EdgeInsets.all(5.0),
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Color(int.parse("0xff${tmpList[index]['color']}")),
                      borderRadius: BorderRadius.all(Radius.circular(
                          20.0)), //BorderRadius.vertical(top: Radius.circular(10)),
                    ),
                    child: Row(
                      children: [
                        Text(
                          '${tmpList[index]['emotion']}',
                          style: TextStyle(
                            fontSize: 26,
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Flexible(
                            child: Text(
                          '${tmpList[index]['text']}',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                      ],
                    ));
              },
              childCount: tmpList.length,
            ),
          ),
        ],
      ),
    );
  }
}
