import 'package:flutter/material.dart';
import 'package:munazara_app/main.dart';

import 'ana_sayfa.dart';

class KartDetayController extends StatelessWidget {
  const KartDetayController({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getCustomAppBar(context),
      body: KartDetay(),
    );
      
  }
}

class KartDetay extends StatefulWidget {
  KartDetay({Key key}) : super(key: key);

  @override
  _KartDetayState createState() => _KartDetayState();
}

class _KartDetayState extends State<KartDetay> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: InSide(),
    );
  }
}