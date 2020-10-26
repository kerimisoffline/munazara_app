import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:munazara_app/Model/constant.dart';
import 'package:munazara_app/View/post_detail.dart';
import 'package:munazara_app/View/welcome_screen.dart';

class CardOne extends StatefulWidget {
  @override
  _CardOneState createState() => _CardOneState();
}

class _CardOneState extends State<CardOne> {
  @override
  Widget build(BuildContext context) {
    return akisCard();
  }
}

// Akış sağlayacak olan metod

akisCard() {
  return Container(
    child: SingleChildScrollView(
      child: Wrap(
        spacing: 5,
        runSpacing: 2,
        children: [
          Container(
            child: PostDetail(),
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

// Card konteynırının içini dolduracak olan widget.

class InSide extends StatefulWidget {
  @override
  _InSideState createState() => _InSideState();
}

class _InSideState extends State<InSide> {
  final TextEditingController _textController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      child: Container(
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              child: Stack(
                children: [
                  Card(
                    child: Container(
                      height: size.height * 0.3,
                    ),
                  ),
                  FractionalTranslation(
                    translation: Offset(0.0, 0),
                    child: Align(
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.lime,
                        backgroundImage: AssetImage('assest/images/pp1.jpg'),
                      ),
                    ),
                  ),
                ],
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: size.width * 0.28,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              'EVET',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // yorumlar kısmı
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(child: Icon(Icons.poll)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: size.width * 0.28,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              'HAYIR',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ), // Evet-Yüzde-Hayır
                // Paylaş, Favorile, Yorum Yap
                Row(
                  children: [
                   Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: Material(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: TextField(
                            style: GoogleFonts.openSans(fontSize: 12),
                            cursorColor: kPrimaryDarkColor,
                            decoration: InputDecoration(
                              hintStyle: GoogleFonts.openSans(fontSize: 10),
                              hintText: 'Tarafını seç, Yorum Yap..',
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                    Container(
                      child: IconButton(
                        icon: Icon(Icons.share),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      child: IconButton(
                        icon: Icon(Icons.star),
                        onPressed: () {},
                      ),
                    ),
                    Container(),
                  ],
                ),

                //Yorumlar(),
                // Yorumlar kısmı burada yani sistem en başından 2Yan-4Alt şeklinde
              ],
            ),
          ],
        ),
      ),
    );
  }
}
