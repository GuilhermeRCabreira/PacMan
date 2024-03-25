import 'package:flutter/material.dart';
import 'package:pac_man/pixel.dart';
import 'package:pac_man/path.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static int numberInRow = 11;
  int numberOfSquares = numberInRow * 17;

  List<int> barriers = [
    0,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    22,
    24,
    26,
    28,
    30,
    32,
    33,
    35,
    37,
    38,
    39,
    41,
    44,
    46,
    52,
    55,
    57,
    59,
    61,
    63,
    66,
    70,
    72,
    77,
    78,
    79,
    80,
    81,
    83,
    84,
    85,
    86,
    99,
    100,
    101,
    102,
    103,
    105,
    106,
    107,
    108,
    110,
    114,
    116,
    121,
    123,
    125,
    127,
    129,
    132,
    134,
    140,
    143,
    145,
    147,
    148,
    149,
    151,
    154,
    156,
    158,
    160,
    162,
    165,
    176,
    177,
    178,
    179,
    180,
    181,
    182,
    183,
    184,
    185,
    186,
    175,
    164,
    153,
    142,
    131,
    120,
    109,
    98,
    87,
    76,
    65,
    54,
    43,
    32,
    21
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: numberOfSquares,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: numberInRow),
                  itemBuilder: (BuildContext context, int index) {
                    if (barriers.contains(index)) {
                      return Pixel(
                        innerColor: Colors.blue[800],
                        outerColor: Colors.blue[900],
                        child: Text(index.toString()),
                      );
                    } else {
                      return Path(
                        innerColor: Colors.yellow,
                        outerColor: Colors.black,
                        child: Text(index.toString()),
                      );
                    }
                  }),
            ),
          ),
          Expanded(
              child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Score: ",
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
                Text(
                  "P L A Y : ",
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
