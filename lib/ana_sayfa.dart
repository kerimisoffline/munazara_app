import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardOne extends StatefulWidget {
  @override
  _CardOneState createState() => _CardOneState();
}

class _CardOneState extends State<CardOne> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: SingleChildScrollView(
        child: Wrap(
          spacing: 5,
          runSpacing: 2,
          children: [
            Container(
              child: InSide(),
            ),
            Divider(
              color: Colors.black,
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              child: InSide(),
            ),
            Divider(
              color: Colors.black,
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              child: InSide(),
            ),
            Divider(
              color: Colors.black,
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              child: InSide(),
            ),
            Divider(
              color: Colors.black,
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              child: InSide(),
            ),
            Divider(
              color: Colors.black,
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}

// Card konteynırının içini dolduracak olan widget.

class InSide extends StatefulWidget {
  @override
  _InSideState createState() => _InSideState();
}

class _InSideState extends State<InSide> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.lime,
              backgroundImage: AssetImage('assest/images/pp1.jpg'),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                margin: EdgeInsets.symmetric(vertical: 5),
                padding: EdgeInsets.all(5),
                child: Text('(8) TARAFSIZ JAPON'),
              ),
              Container(
                height: size.height * 0.10,
                width: size.width * 0.75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                margin: EdgeInsets.symmetric(horizontal: 2),
                padding: EdgeInsets.all(5),
                child: Text(
                  'İnsanoğlu hiçbir zaman Ay^a ayak basmamıştır.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Row(),
            ],
          ),
        ],
      ),
    );
  }
}
