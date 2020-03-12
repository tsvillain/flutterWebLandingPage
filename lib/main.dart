import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ClipPath(
            clipper: BackgroundClipper(),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.blueAccent),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: ClipPath(
              clipper: BackgroundBlackClipper(),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.9,
                width: MediaQuery.of(context).size.width * 1.0,
                decoration: BoxDecoration(color: Colors.black),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(60, 5, 60, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                gradient: LinearGradient(colors: [
                                  Colors.purple,
                                  Colors.deepPurple
                                ])),
                            child: Icon(
                              Icons.music_note,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            "Music",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          FlatButton(
                            onPressed: () {},
                            child: Text("Home",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold)),
                          ),
                          FlatButton(
                            onPressed: () {},
                            child: Text("About Us",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold)),
                          ),
                          FlatButton(
                            onPressed: () {},
                            child: Text("Product",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold)),
                          ),
                          FlatButton(
                            onPressed: () {},
                            child: Text("Blog",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold)),
                          ),
                          FlatButton(
                            onPressed: () {},
                            child: Text("Contact Us",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    ),
                    OutlineButton(
                      onPressed: () {},
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      borderSide: BorderSide(color: Colors.white, width: 3.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.circular(5.0)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 150,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: Text(
                    "Best way to enjoy Music",
                    style:
                        TextStyle(fontSize: 64.0, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    "Losdjs dsidj  djsijd sdjsdji  djosi disjd oidjisjdisjd ij adjiosjd jsdijsidjsj dsdj soidjsiodjisjdsjdij disjd",
                    style: TextStyle(
                        fontSize: 20.0, color: Colors.grey, letterSpacing: 1.0),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  width: 150,
                  height: 40,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.purple, Colors.deepPurple],
                      ),
                      borderRadius: BorderRadius.circular(5.0)),
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      "Download",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(5.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: MediaQuery.of(context).size.width * 0.2,
            child: Container(
              padding: EdgeInsets.fromLTRB(3, 20, 3, 0),
              height: MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.width * 0.25,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5.0)]),
              child: Image(
                image: AssetImage('asset/app_screen.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(size.width * 0.2, 0);
    path.lineTo(size.width, size.height * 1.2);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class BackgroundBlackClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(size.width * 0.55, size.height * 0.47);
    path.lineTo(size.width, size.height * 1.22);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
