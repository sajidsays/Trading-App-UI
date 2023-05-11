import 'package:flutter/material.dart';
import 'package:tradingappui/pages/gallery.dart';
import 'package:tradingappui/pages/signup.dart';

import '../costum_widgets/checkbox.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  bool _isObscured = true;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              // Image Container Start
              Container(
                padding: EdgeInsets.only(top: 0),
                child: CircleAvatar(
                  radius: 120,
                  backgroundColor: Colors.transparent,
                  backgroundImage: NetworkImage(
                      'https://png.pngtree.com/png-vector/20221003/ourmid/pngtree-medical-logo-png-image_6262774.png'),
                ),
              ),
              // Image Container End
              SizedBox(
                height: 10,
              ),
              // Heading Text Start
              Container(
                child: Text(
                  "Login to Your Account",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              // Headin Text End
              SizedBox(
                height: 30,
              ),
              // Name Text Field Start
              Container(
                padding: EdgeInsets.only(left: 10),
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(color: Colors.grey.shade100),
                    ]),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.email),
                        color: Colors.black,
                      ),
                      hintText: "Enter Your Email",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.grey.shade100,
                          )),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.black,
                          ))),
                ),
              ),
              // Name Text Field End
              SizedBox(
                height: 20,
              ),
              // Password Text Field Start
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(color: Colors.grey.shade100),
                    ]),
                child: TextField(
                  obscureText: _isObscured,
                  decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _isObscured = !_isObscured;
                          });
                        },
                        child: Icon(
                            color: Colors.black,
                            _isObscured
                                ? Icons.visibility
                                : Icons.visibility_off),
                      ),
                      prefixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.lock),
                        color: Colors.black,
                      ),
                      hintText: "Enter Password",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.grey.shade100,
                          )),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.black,
                          ))),
                ),
              ),
              // Password Text Field End
              SizedBox(
                height: 20,
              ),
              // Check Box and Text Widget Start
              Container(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                    child: CheckBox(),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                      child: Text(
                    "Remeber me",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  )),
                ]),
              ),
              // Check Box and Text Widget End
              SizedBox(
                height: 10,
              ),
              // Sign in button Start
              Container(
                width: 350,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => GalleryPage()));
                  },
                  child: Text(
                    'Sign in',
                    style: TextStyle(fontSize: 15),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ),
              // Sign in button End
              SizedBox(
                height: 10,
              ),
              // Text Container Start
              Container(
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot the password?",
                      style: TextStyle(fontSize: 15),
                    )),
              ),
              // Text Container End
              SizedBox(
                height: 20,
              ),
              // line or line Start
              Container(
                // width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        '____________________',
                        style: TextStyle(
                          color: Color.fromARGB(255, 207, 207, 207),
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        'or continue with',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        '____________________',
                        style: TextStyle(
                            color: Color.fromARGB(255, 207, 207, 207)),
                      ),
                    ),
                  ],
                ),
              ),
              // line or line End
              SizedBox(
                height: 30,
              ),
              // Icons Widget Start
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 80,
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(15)),
                    child: IconButton(
                        onPressed: () {},
                        icon: Image.network(
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/600px-Facebook_Logo_%282019%29.png')),
                  ),
                  Container(
                    width: 80,
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(15)),
                    child: IconButton(
                        onPressed: () {},
                        icon: Image.network(
                            'https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png')),
                  ),
                  Container(
                    width: 80,
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(15)),
                    child: IconButton(
                        onPressed: () {},
                        icon: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0GbEA1HIlJKjqWZJWo26-BDXP4z0Aw7Du8QGVJ7s&s')),
                  ),
                ],
              ),
              // Icons Widget End
              SizedBox(
                height: 20,
              ),
              // Text Container Start
              Container(
                padding: EdgeInsets.only(left: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text("Don't have an account?"),
                    ),
                    Container(
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const SignUp(),
                            ),
                          );
                        },
                        child: Text("Sign Up"),
                      ),
                    ),
                  ],
                ),
              )
              // Text Container End
            ],
          ),
        ),
      ),
    );
  }
}
