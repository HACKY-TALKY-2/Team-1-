import 'package:flutter/material.dart';

/*const hList = [
  {
    "tree": "벚꽃나무",
    "te": "사단법인 생명의 숲\n나무 100그루 기부 성공!\n",
    "date": "2023.03. - 2023.04 (100000L)",
  },
  {
    "tree": "떡갈나무",
    "te": "unicef\n지구를 위해 100만원 기부\n",
    "date": "2022.08. - 2023.3 (2600L)",
  },
];
*/
class HistoryPage extends StatelessWidget {
  HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    //  const hislist = hList;
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                icon: const Icon(Icons.navigate_before),
                tooltip: 'Home page',
                onPressed: () {
                  // openPage(context);
                },
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                child: const Text(
                  '역삼역 나무 히스토리',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'Mohave',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: TreeDetail1(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: TreeDetail2(),
          ),
        ],
      ),
    ));
  }
}

class TreeDetail1 extends StatelessWidget {
  const TreeDetail1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: ShapeDecoration(
        color: Color.fromARGB(255, 240, 250, 240),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
                width: 120,
                height: 120,
                child: Image.asset('assets/Tree_img_1.png')),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              const SizedBox(width: 10),
              Text(
                '벚꽃나무',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Mohave',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                '사단법인 생명의 숲\n나무 100그루 기부 성공!\n',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Mohave',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              Text(
                '2023.03. - 2023.04 (100000L)',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                  fontFamily: 'Mohave',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TreeDetail2 extends StatelessWidget {
  const TreeDetail2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: ShapeDecoration(
        color: Color.fromARGB(255, 240, 250, 240),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
                width: 120,
                height: 120,
                child: Image.asset('assets/Tree_img_2.png')),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              const SizedBox(width: 10),
              Text(
                '떡갈나무',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Mohave',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                'unicef\n지구를 위해 100만원 기부\n',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Mohave',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              Text(
                '2022.08. - 2023.3 (2600L)',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                  fontFamily: 'Mohave',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
