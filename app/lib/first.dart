import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 80, 0, 40),
              child: Text(
                '오늘의 쓰레기 통계',
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            ),
          ),
          Container(
            child: ConstrainedBox(
              constraints: BoxConstraints.expand(height: 600.0),
              child: charts.BarChart(
                [
                  charts.Series(
                    fillColorFn: (datum, index) =>
                        charts.MaterialPalette.green.makeShades(0)[0],
                    id: "a",
                    data: [1, 2, 3, 4, 5],
                    domainFn: (datum, index) {
                      switch (index) {
                        case 0:
                          return "캔";
                        case 1:
                          return "플라스틱";
                        case 2:
                          return "종이컵";
                        case 3:
                          return "건전지";
                      }
                      return "ALL";
                    },
                    measureFn: (datum, index) => index,
                  )
                ],
                vertical: false,
                animate: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
