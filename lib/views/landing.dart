import 'package:coba/views/beranda.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => new _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _bottomNavCurrentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Form(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                Text(
                  "MOESLEM",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.deepPurple[600],
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Learn Quran and Recite once everyday",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 40),
                Image.asset('assets/splash.png'),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Beranda()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                    primary: Colors.deepPurple[600],
                    shape: StadiumBorder(),
                  ),
                  child: Text(
                    "GET STARTED",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
