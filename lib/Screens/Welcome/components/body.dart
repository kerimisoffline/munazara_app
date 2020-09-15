import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:munazara_app/Components/roundedButton.dart';
import 'package:munazara_app/Screens/Welcome/components/background.dart';
import 'package:munazara_app/constant.dart';
import 'package:munazara_app/main.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'MunazaraApp v1.0',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Image.asset('assest/images/giris_kapi.png',
                height: size.height * 0.5),
            Container(
              width: size.width * 0.65,
              child: RoundedButton(
                text: 'GİRİŞ',
                press: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
              ),
            ),
            Container(
              width: size.width * 0.65,
              child: RoundedButton(
                text: 'KAYIT OL',
                color: kPrimaryLightColor,
                textColor: Colors.black,
                press: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
