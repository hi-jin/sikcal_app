import 'package:flutter/material.dart';
import 'package:sikcal/screen/InputUserInformation/input_useractivity.dart';

class InputUserTargetWeightScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(children: <Widget>[
        SizedBox(height: 200),
        Container(
          child: Text('목표 체중은 얼마인가요?'),
        ),
        SizedBox(height: 50),
        Container(
            width: 250,
            child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '목표 체중을 입력해주세요.'
                )
            )
        ),
        SizedBox(height: 25),
        Container(
          margin: EdgeInsets.all(5),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return InputUserActivityScreen();
                  },
                ),
              );
            },
            child: Text('다음'),
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
              padding: EdgeInsets.all(10.0),
              textStyle: TextStyle(color: Colors.white),
              minimumSize: Size(250, 50),
            ),
          ),
        ),
      ]
      ),
      ),
    );
  }
}