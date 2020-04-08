import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_scbfep/ui/view/dashboard.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  double height;
  double width;
  bool isDesktop = false;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    isDesktop = width > height;
    return Scaffold(
      appBar: isDesktop
          ? null
          : AppBar(
              backgroundColor: Colors.white,
              title: Center(
                child: Text(
                  "Aeo Classified App",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              elevation: 10,
              titleSpacing: 40,
            ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: isDesktop ? 58.0 : 5.0,
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: isDesktop
                    ? Container(
                        width: width / 1.5,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              width: width / 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 18.0),
                                    child: Text(
                                      "Welcome!",
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Text(
                                    "This classified portal is your one stop online store to sell and purchase you old/new goods on best prize.",
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 28.0),
                                    child: TextFormField(
                                      decoration: new InputDecoration(
                                          border: new OutlineInputBorder(
                                              borderSide: new BorderSide(
                                            color: Colors.grey,
                                          )),
                                          labelText: 'Email',
                                          labelStyle:
                                              TextStyle(color: Colors.grey)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: TextFormField(
                                      decoration: new InputDecoration(
                                          border: new OutlineInputBorder(
                                              borderSide: new BorderSide(
                                            color: Colors.grey,
                                          )),
                                          labelText: 'Password',
                                          labelStyle:
                                              TextStyle(color: Colors.grey)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: RaisedButton(
                                      color: Colors.green,
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return Dashboard();
                                        }));
                                      },
                                      child: SizedBox(
                                        width: double.infinity,
                                        child: Text(
                                          "Log In",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 6),
                                        child: Text('OR')),
                                  ),
                                  _buildFacebookSignInButton(),
                                  _buildGoogleSignInButton(),
                                  Center(
                                    child: GestureDetector(
                                      onTap: null,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(top: 10.0),
                                        child: Text(
                                          "Forgot Password",
                                          style: TextStyle(
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15.0),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text("Dont have an Account? "),
                                        Text(
                                          "Register",
                                          style: TextStyle(color: Colors.green),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: width / 3,
                              child: Padding(
                                padding: EdgeInsets.only(left: 60),
                                child: Image.asset(
                                  'assets/images/ic_banner.png',
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    : Container(
                        width: width,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: height / 4.5,
                              child: Padding(
                                padding: EdgeInsets.all(height / 20),
                                child: Image.asset(
                                    'assets/images/ic_banner.png',
                                    fit: BoxFit.fitHeight),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: height / 20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 5.0),
                                      child: Text(
                                        "Welcome!",
                                        style: TextStyle(
                                            fontSize: 28,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 15.0),
                                      child: Text(
                                        "This classified portal is your one stop online store to sell and purchase you old/new goods on best prize.",
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 25.0),
                                      child: TextFormField(
                                        decoration: new InputDecoration(
                                            border: new OutlineInputBorder(
                                                borderSide: new BorderSide(
                                              color: Colors.grey,
                                            )),
                                            labelText: 'Email',
                                            labelStyle:
                                                TextStyle(color: Colors.grey)),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: TextFormField(
                                        decoration: new InputDecoration(
                                            border: new OutlineInputBorder(
                                                borderSide: new BorderSide(
                                              color: Colors.grey,
                                            )),
                                            labelText: 'Password',
                                            labelStyle:
                                                TextStyle(color: Colors.grey)),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: RaisedButton(
                                        color: Colors.green,
                                        onPressed: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return Dashboard();
                                          }));
                                        },
                                        child: SizedBox(
                                          width: double.infinity,
                                          child: Text(
                                            "Log In",
                                            textAlign: TextAlign.center,
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 6),
                                          child: Text('OR')),
                                    ),
                                    _buildFacebookSignInButton(),
                                    _buildGoogleSignInButton(),
                                    Center(
                                      child: GestureDetector(
                                        onTap: null,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10.0),
                                          child: Text(
                                            "Forgot Password",
                                            style: TextStyle(
                                              color: Colors.green,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15.0),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text("Dont have an Account? "),
                                          Text(
                                            "Register",
                                            style:
                                                TextStyle(color: Colors.green),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 38.0),
                child: Container(
                  width: width,
                  color: Color(0xfff5f6f6),
                  child: Center(
                    child: Container(
                      width: isDesktop ? width / 1.5 : width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          isDesktop
                              ? SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 28),
                                        child: Text(
                                          "Frequently Asked Questions",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Text("Terms of Service",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      Padding(
                                        padding: const EdgeInsets.all(28.0),
                                        child: Text("Privacy Policy",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                      ),
                                      Text("Cookies Policy",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                )
                              : Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  mainAxisSize: MainAxisSize.max,
                                  children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 18.0),
                                          child: Text(
                                            "FAQ's",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 18.0),
                                          child: Text("Terms of Service",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 18.0),
                                          child: Text("Privacy Policy",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 18.0),
                                          child: Text("Cookies Policy",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 18.0, bottom: 18.0),
                            child: Container(
                              color: Colors.black12,
                              height: 2,
                              //width: width / 1.5,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 0.0),
                            child: Text(
                              "Contact Us",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            child: Center(
                              child: isDesktop
                                  ? Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 15.0, right: 15.0),
                                              child: Text(
                                                "Aeologic Technologies Pvt. Ltd.",
                                                style: TextStyle(
                                                    color: Colors.grey),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 5.0, right: 15.0),
                                              child: Text(
                                                "Pinnacle Tower, Sector 62, Noida, \nIndia",
                                                style: TextStyle(
                                                    color: Colors.grey),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15.0, top: 5),
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(Icons.phone),
                                                  Text(
                                                    "  (123-456-7899)",
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15.0,
                                                  top: 10,
                                                  bottom: 28),
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(Icons.email),
                                                  Text(
                                                    "  support@aeologic.com",
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    )
                                  : Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 15.0,
                                                      vertical: 5.0),
                                              child: Text(
                                                "Aeologic Technologies Pvt. Ltd.",
                                                style: TextStyle(
                                                    color: Colors.grey),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 15.0),
                                              child: Text(
                                                "Pinnacle Tower, Sector 62, Noida, \nIndia",
                                                style: TextStyle(
                                                    color: Colors.grey),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 18.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 15.0, bottom: 5.0),
                                                child: Row(
                                                  children: <Widget>[
                                                    Icon(Icons.phone),
                                                    Text(
                                                      "  (123-456-7899)",
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5.0, bottom: 15.0),
                                                child: Row(
                                                  children: <Widget>[
                                                    Icon(Icons.email),
                                                    Text(
                                                      "  support@aeologic.com",
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFacebookSignInButton() {
    return FlatButton(
        color: Colors.grey[300],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        padding: isDesktop
            ? EdgeInsets.only(top: 5, bottom: 5, left: 15, right: 15)
            : EdgeInsets.only(left: 16, right: 16),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              "assets/images/fbLite_logo.png",
              height: height / 40,
              width: width / 20,
              fit: BoxFit.cover,
            ),
            SizedBox(
              width: 20,
            ),
            Text('Sign in with Facebook')
          ],
        ));
  }

  Widget _buildGoogleSignInButton() {
    return FlatButton(
        color: Colors.grey[300],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        padding: isDesktop
            ? EdgeInsets.only(top: 5, bottom: 5, left: 30, right: 15)
            : EdgeInsets.only(left: 20, right: 16),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: isDesktop ? height / 35 : height / 40,
              width: isDesktop ? height / 35 : height / 40,
              child: Image.asset(
                "assets/images/google_logo.png",
              ),
            ),
            SizedBox(
              width: isDesktop?27:20,
            ),
            Text('Sign in with Google')
          ],
        ));
  }
}
