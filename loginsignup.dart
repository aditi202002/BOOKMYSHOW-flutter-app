import 'package:bmsflutter/Home.dart';
import 'package:bmsflutter/main.dart';
import 'package:flutter/material.dart';

class LoginSignup extends StatefulWidget {
  const LoginSignup({Key? key}) : super(key: key);
  @override
  _LoginSignupState createState() => _LoginSignupState();
}

class _LoginSignupState extends State<LoginSignup> {
  // String dialCodDigits = "+91";
  // TextEditingController _controller = TextEditingController();
  get child => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
//********************* Text Button ****************
            Padding(padding: EdgeInsets.fromLTRB(0, 40, 0, 0)),
            TextButton(
              onPressed: () {
                // Navigator.pushNamed(context, '/navigation_bar');
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyApp()));
              },
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.grey),
              ),
              child: Text(
                'SKIP',
                style: TextStyle(fontSize: 20.0),
              ),
            ),

//********************* Image ********************
            Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 80)),
            Image.asset('Assets/pooh.jpg', height: 200, width: 200),
//********************* Text ***********************
            Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
            SizedBox(
              width: (MediaQuery.of(context).size.width - 60),
              child: new Text(
                "Forget to grab your movie snacks? No worries! you can still order them even after booking your tickets.",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 12,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
//******************** Horizontal line
            new Container(
              height: MediaQuery.of(context).size.height / 8,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width / 4,
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Continue with",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w900),
                    ),
                  ),
                  Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width / 4,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
//********************** Login Icons *************

            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(80, 0, 0, 0),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.facebook,
                    color: Colors.blue,
                    size: 55,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(40, 0, 0, 50),
                ),
                Text(
                  "OR",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.email,
                    color: Colors.black,
                    size: 55,
                  ),
                ),
              ],
            ),

//****************** Privacy Policy **************
            Padding(
              padding: EdgeInsets.fromLTRB(0, 70, 0, 100),
            ),
            Text(
              "By continuing, you agree to our",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                "Term of Services Privacy Policy Content Policy",
                style: TextStyle(
                  color: Colors.grey,
                  decoration: TextDecoration.underline,
                  fontSize: 12,
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
