import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class Fourth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 80, 0, 40),
              child: Text(
                '설정',
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        "색상 설정",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    // ColorPicker(
                    //   pickerColor: Colors.green,
                    //   onColorChanged: (value) {},
                    // )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
