import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  )
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _HitClubState();
}

class _HitClubState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
      constraints: BoxConstraints.expand(),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
            child: Container(
              width: 70,
              height: 70,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white),
              //child: Image.asset('assets/image/hit.jpg'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
            child: Text(
              "LOGIN HIT CLUB",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
            child: TextField(
              style: TextStyle(fontSize: 18, color: Colors.black),
              decoration: InputDecoration(
                  labelText: "Username",
                  labelStyle:
                      TextStyle(color: Color(0xff888888), fontSize: 15)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
            child: Stack(
              alignment: AlignmentDirectional.centerEnd,
              children: <Widget>[
                TextField(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle:
                          TextStyle(color: Color(0xff888888), fontSize: 15)),
                ),
                Text(
                  "Show",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
            child: SizedBox(
                width: double.infinity,
                height: 56,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 17, color: Colors.blue),
                  ),
                )),
          ),
          Container(
            height: 130,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 15, color: Colors.blue),
                ),
                Text(
                  "Forget Password",
                  style: TextStyle(fontSize: 15, color: Colors.blue),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
