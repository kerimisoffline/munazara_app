import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:munazara_app/Controller/authentication_services.dart';
import 'package:munazara_app/View/sign_in.dart';
import 'package:provider/provider.dart';
import 'Model/constant.dart';
import 'View/Screens/Welcome/welcome_screen.dart';
import 'View/ana_sayfa.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Login());
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthenticationService>(
          create: (_) => AuthenticationService(FirebaseAuth.instance),
        ),
        // Access authentication services
        StreamProvider(
          create: (context) =>
              context.read<AuthenticationService>().authStateChanges,
        ),
      ],
      child: MaterialApp(
        /**
      initialRoute: 'homeScreen',
      routes: {
        'homeScreen': (context) => Login(),
      },
          **/
        title: 'ÖyleyseVarım Test 1.0',
        theme: ThemeData(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: kPrimaryLightColor,
        ),
        home: AuthenticationWrapper(),
      ),
    );
  }
}

class AuthenticationWrapper extends StatelessWidget {
  const AuthenticationWrapper({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User>();

    if (firebaseUser != null) {
      return Home();
    }
    return SignInPage();
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  final tabs = [
    Container(
      child: CardOne(),
    ),
    Center(
      child: Text('Keşfet'),
    ),
    Center(
      child: Text('Ekle'),
    ),
    Center(
      child: Text('Gruplar'),
    ),
    Center(
      child: Text('Profilim'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: kPrimaryLightColor,
        appBar: getCustomAppBar(context),
        body: tabs[_currentIndex],
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: kPrimaryLightColor,
          height: 50,
          items: [
            Icon(
              Icons.home,
              size: 20,
              color: kPrimaryDarkColor,
            ),
            Icon(
              Icons.explore,
              size: 20,
              color: kPrimaryDarkColor,
            ),
            Icon(
              Icons.add_circle_outline,
              size: 40,
              color: kPrimaryDarkColor,
            ),
            Icon(
              Icons.people,
              size: 20,
              color: kPrimaryDarkColor,
            ),
            Icon(
              Icons.person_outline,
              size: 20,
              color: kPrimaryDarkColor,
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}

getCustomAppBar(context) {
  return PreferredSize(
    preferredSize: Size.fromHeight(50),
    child: Container(
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.chevron_left),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WelcomeScreen()),
              );
            },
          ),
          Text('Münazara Test 1.1'),
          IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                context.read<AuthenticationService>().signOut();
                Fluttertoast.showToast(
                  msg: "SignOut",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 1,
                );
              }),
        ],
      ),
    ),
  );
}
