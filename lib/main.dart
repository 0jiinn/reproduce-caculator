import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "계산기",
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  String number = '0';

  String numberState(String num){
    if(this.number == '0'){
      return '$num';
    } else {
      return '${this.number}$num';
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Text(
                    number,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 100,
                    ),
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    maxLines: 1,
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    /*
                    1234567이 있을 때,
                    12345... 이게 아니라
                    ...34567 이렇게 뜨게 하고싶음.
                     */
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      number = '0';
                    });
                  },
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(100)),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text("AC", style: TextStyle(fontSize: 35)),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(100)),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text("+/-", style: TextStyle(fontSize: 35)),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      number = (double.parse(number) / 100).toString();
                    });
                  },
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(100)),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text("%", style: TextStyle(fontSize: 35)),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(100)),
                    child: Container(
                      alignment: Alignment.center,
                      child: Icon(
                        CupertinoIcons.divide,
                        size: 35,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      number = numberState('7');
                    });
                  },
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(100)),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text("7",
                          style: TextStyle(fontSize: 35, color: Colors.white)),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      number = numberState('8');
                    });
                  },
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(100)),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text("8",
                          style: TextStyle(fontSize: 35, color: Colors.white)),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      number = numberState('9');
                    });
                  },
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(100)),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text("9",
                          style: TextStyle(fontSize: 35, color: Colors.white)),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(100)),
                    child: Container(
                      alignment: Alignment.center,
                      child: Icon(
                        CupertinoIcons.multiply,
                        size: 35,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      number = numberState('4');
                    });
                  },
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(100)),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text("4",
                          style: TextStyle(fontSize: 35, color: Colors.white)),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      number = numberState('5');
                    });
                  },
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(100)),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text("5",
                          style: TextStyle(fontSize: 35, color: Colors.white)),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      number = numberState('6');
                    });
                  },
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(100)),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text("6",
                          style: TextStyle(fontSize: 35, color: Colors.white)),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(100)),
                    child: Container(
                      alignment: Alignment.center,
                      child: Icon(
                        CupertinoIcons.minus,
                        size: 35,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      number = numberState('1');
                    });
                  },
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(100)),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text("1",
                          style: TextStyle(fontSize: 35, color: Colors.white)),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      number = numberState('2');
                    });
                  },
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(100)),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text("2",
                          style: TextStyle(fontSize: 35, color: Colors.white)),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      number = numberState('3');
                    });
                  },
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(100)),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text("3",
                          style: TextStyle(fontSize: 35, color: Colors.white)),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      String num1 = number;
                      number = '0';
                      bool doPlus = true;
                      /*
                      하고 싶은 내용:
                      1. 원래있던 number를 첫번째 숫자라는 변수에 저장하기
                      2. number를 0으로 초기화하기
                      3. =를 눌렀을 때 if문으로 실행할 doPlus라는 bool값을 true로 바꾸기
                       */
                    });
                  },
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(100)),
                    child: Container(
                      alignment: Alignment.center,
                      child: Icon(
                        CupertinoIcons.plus,
                        size: 35,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      number = numberState('0');
                    });
                  },
                  child: Container(
                    height: 80,
                    width: 175,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(100)),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text("0",
                              style:
                                  TextStyle(fontSize: 35, color: Colors.white)),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      number = numberState('.');
                    });
                  },
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(100)),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(".",
                          style: TextStyle(fontSize: 35, color: Colors.white)),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(100)),
                    child: Container(
                      alignment: Alignment.center,
                      child: Icon(
                        CupertinoIcons.equal,
                        size: 35,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
