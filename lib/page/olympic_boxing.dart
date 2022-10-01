import 'package:flutter/material.dart';

class BoxingOlympic extends StatefulWidget {
  const BoxingOlympic({Key? key}) : super(key: key);

  @override
  State<BoxingOlympic> createState() => _BoxingOlympicState();
}

class _BoxingOlympicState extends State<BoxingOlympic> {
  var _text1 = '';
  var _text2 = '';
  var _text3 = '';
  var _scoreRed = '';
  var _scoreBlue = '';
  int scoreIR = 0;
  int scoreTH = 0;
  int count = 0;

  void _handleClickRed() {
    count++;
    scoreIR += 10;
    scoreTH += 9;
    int num = 1;
    print('ButtonRedClick');
    if (count == 1) {
      print('$scoreIR Red $count');
      setState(() {
        _text1 = 'R';
      });
    }
    if (count == 2) {
      //var result = _score.winR(num);
      print('$scoreIR Red $count');
      setState(() {
        _text2 = 'R';
      });
    }
    if (count == 3) {
      //var result = _score.winR(num);
      print('$scoreIR Red $count');
      setState(() {
        _text3 = 'R';
      });
    }
    setState(() {
      _scoreRed = '$scoreIR';
    });
    setState(() {
      _scoreBlue = '$scoreTH';
    });
  }

  void _handleClickBlue() {
    count++;
    int num = 2;
    scoreIR += 9;
    scoreTH += 10;
    print('ButtonBlueClick');
    if (count == 1) {
      print('$scoreTH Blue $count');
      setState(() {
        _text1 = 'B';
      });
    }
    if (count == 2) {
      print('$scoreTH Blue $count');
      setState(() {
        _text2 = 'B';
      });
    }
    if (count == 3) {
      print('$scoreTH Blue $count');
      setState(() {
        _text3 = 'B';
      });
    }
    setState(() {
      _scoreBlue = '$scoreTH';
    });
    setState(() {
      _scoreRed = '$scoreIR';
    });
  }

  void _reset() {
    count = 0;
    setState(() {
      _scoreRed = '';
      _scoreBlue = '';
      scoreTH = 0;
      scoreIR = 0;
      _text1 = '';
      _text2 = '';
      _text3 = '';
    });
  }

  //---------------------------------------------------------------------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //ส่วนหัวเรื่อง
      appBar: AppBar(
        title: const Text('OLYMPIC BOXING SCORING'),
      ),
      //
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 15.0),

            Image.asset(
              'assets/images/logo.png',
              width: 250.0,
            ),

            SizedBox(height: 15.0),

            Container(
              width: 2000.0,
              height: 20.0,
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Women's Light (57-60kg) Semi-final",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 10.0),

            Row(
              //Red athlete
              children: [
                Icon(
                  Icons.person,
                  color: Color(0xffb71c1c),
                  size: 75.25,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/flag_ireland.png',
                          width: 35.25,
                        ),
                        Text(' IRELAND', style: TextStyle(fontSize: 20.0)),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Text('HARRINGTON Kellie Anne',
                        style: TextStyle(fontSize: 15.0)),
                  ],
                ),
                if (count == 3 && scoreIR > scoreTH)
                  Column(
                    children: [
                      Icon(
                        Icons.check,
                        size: 40.0,
                        color: Colors.green,
                      )
                    ],
                  ),
              ],
            ),

            SizedBox(height: 10.0),

            Row(
              //blue athlete
              children: [
                Icon(
                  Icons.person,
                  color: Color(0xff283593),
                  size: 75.25,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/flag_thailand.png',
                          width: 35.25,
                        ),
                        Text(' THAILAND', style: TextStyle(fontSize: 20.0)),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Text('SEESONDEE Sudaporn',
                        style: TextStyle(fontSize: 15.0)),
                  ],
                ),
                if (count == 3 && scoreTH > scoreIR)
                  Column(
                    children: [
                      Icon(
                        Icons.check,
                        size: 40.0,
                        color: Colors.green,
                      )
                    ],
                  ),
              ],
            ),

            //line red&blue
            Row(
              children: [
                Expanded(
                    child: Container(
                  color: Color(0xffb71c1c),
                  height: 5.5,
                )),
                Expanded(
                    child: Container(
                  color: Color(0xff283593),
                  height: 5.5,
                )),
              ],
            ),

            SizedBox(height: 10.0),

            if (count >= 1)
              Column(
                children: [
                  Text('ROUND 1'),
                  if (_text1 == 'R')
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '10',
                          style: new TextStyle(fontSize: 25.0),
                        ),
                        Text(
                          '9',
                          style: new TextStyle(fontSize: 25.0),
                        ),
                      ],
                    ),
                  if (_text1 == 'B')
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '9',
                          style: new TextStyle(fontSize: 25.0),
                        ),
                        Text(
                          '10',
                          style: new TextStyle(fontSize: 25.0),
                        ),
                      ],
                    ),
                  if (count > 0 && count <= 3)
                    Row(
                      children: [
                        Expanded(child: Divider(color: Color(0xFFE1E1E1))),
                      ],
                    ),
                ],
              ),

            SizedBox(height: 10.0),

            if (count >= 2)
              Column(
                children: [
                  Text('ROUND 2'),
                  if (_text2 == 'R')
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '10',
                          style: new TextStyle(fontSize: 25.0),
                        ),
                        Text(
                          '9',
                          style: new TextStyle(fontSize: 25.0),
                        ),
                      ],
                    ),
                  if (_text2 == 'B')
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '9',
                          style: new TextStyle(fontSize: 25.0),
                        ),
                        Text(
                          '10',
                          style: new TextStyle(fontSize: 25.0),
                        ),
                      ],
                    ),
                  if (count > 0 && count <= 3)
                    Row(
                      children: [
                        Expanded(child: Divider(color: Color(0xFFE1E1E1))),
                      ],
                    ),
                ],
              ),

            SizedBox(height: 10.0),

            if (count >= 3)
              Column(
                children: [
                  Text('ROUND 3'),
                  if (_text3 == 'R')
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '10',
                          style: new TextStyle(fontSize: 25.0),
                        ),
                        Text(
                          '9',
                          style: new TextStyle(fontSize: 25.0),
                        ),
                      ],
                    ),
                  if (_text3 == 'B')
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '9',
                          style: new TextStyle(fontSize: 25.0),
                        ),
                        Text(
                          '10',
                          style: new TextStyle(fontSize: 25.0),
                        ),
                      ],
                    ),
                  if (count > 0 && count <= 3)
                    Row(
                      children: [
                        Expanded(child: Divider(color: Color(0xFFE1E1E1))),
                      ],
                    ),
                ],
              ),

            SizedBox(height: 10.0),

            if (count >= 3)
              Column(
                children: [
                  Text('TOTAL'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        _scoreRed,
                        style: new TextStyle(fontSize: 25.0),
                      ),
                      Text(
                        _scoreBlue,
                        style: new TextStyle(fontSize: 25.0),
                      ),
                    ],
                  ),
                  if (count > 0 && count <= 3)
                    Row(
                      children: [
                        Expanded(child: Divider(color: Color(0xFFE1E1E1))),
                      ],
                    ),
                ],
              ),

            SizedBox(height: 20.0),

            //สร้างปุ่มกดทีมที่ได้คะแนน
            if (count != 3)
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: ElevatedButton(
                        onPressed: _handleClickRed,
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xffb71c1c),
                          minimumSize: Size(0, 55),
                        ),
                        child: Icon(Icons.person),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: ElevatedButton(
                        onPressed: _handleClickBlue,
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff283593),
                          minimumSize: Size(0, 55),
                        ),
                        child: Icon(Icons.person),
                      ),
                    ),
                  ),
                ],
              ),
            
            //สร้างปุ่มกดรีเซ็ตค่าทั้งหมด
            if (count == 3)
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: ElevatedButton(
                        onPressed: _reset,
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF000000),
                          minimumSize: Size(0, 50),
                        ),
                        child: Icon(Icons.clear),
                      ),
                    ),
                  ),
                ],
              ),
            //-------------------------------------------------
          ],
        ),
      ),
    );
  }
}
