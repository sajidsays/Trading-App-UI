import 'package:flutter/material.dart';
import 'package:tradingappui/pages/login.dart';
import 'package:tradingappui/pages/signup.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Main Container Start
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              // Login Image Container Start
              Container(
                padding: const EdgeInsets.only(top: 100, left: 0),
                child: const CircleAvatar(
                    radius: 120,
                    backgroundColor: Colors.transparent,
                    backgroundImage: NetworkImage(
                        'https://chiropracticassistant.ca/wp-content/uploads/2021/07/php-login-and-authentication-the-definitive-guide.png')),
              ),
              // Login Image Container End
              SizedBox(
                height: 20,
              ),
              // Heading Text Start
              Container(
                child: Text("Let's you in",
                    style:
                        TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
              ),
              // Heading Text End
              SizedBox(
                height: 30,
              ),
              // Facebook Link Button Start
              Container(
                width: 350,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade200),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.only(left: 40),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Image.network(
                            width: 30,
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/600px-Facebook_Logo_%282019%29.png')),
                    TextButton(
                        style: TextButton.styleFrom(primary: Colors.black),
                        onPressed: () {},
                        child: Text("Continue With Facebook"))
                  ],
                ),
              ),
              // Facebook Link Button End
              SizedBox(
                height: 20,
              ),
              // Google Link Button Start
              Container(
                width: 350,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade200),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.only(left: 40),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Image.network(
                            width: 40,
                            'https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png')),
                    TextButton(
                        style: TextButton.styleFrom(primary: Colors.black),
                        onPressed: () {},
                        child: Text("Continue With Google"))
                  ],
                ),
              ),
              // Google Link Button End
              SizedBox(
                height: 20,
              ),
              // Apple Link Button Start
              Container(
                width: 350,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade200),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.only(left: 40),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Image.network(
                            width: 40,
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0GbEA1HIlJKjqWZJWo26-BDXP4z0Aw7Du8QGVJ7s&s')),
                    TextButton(
                        style: TextButton.styleFrom(primary: Colors.black),
                        onPressed: () {},
                        child: Text("Continue With Apple"))
                  ],
                ),
              ),
              // Apple Link Button End
              SizedBox(
                height: 40,
              ),
              // line or line Start
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        '____________________',
                        style: TextStyle(
                            color: Color.fromARGB(255, 207, 207, 207)),
                      ),
                    ),
                    Container(
                      child: Text(
                        'or',
                        style: TextStyle(color: Colors.black),
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
              // Sign in with password button Start
              Container(
                width: 350,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()));
                  },
                  child: Text('Sign in with password'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ),
              // Sign in with password button End
              SizedBox(
                height: 20,
              ),
              // Text Container Start
              Row(
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
              )
              // Text Container End
            ],
          ),
        ),
      ),
    );
    // Main Container End
  }
}
