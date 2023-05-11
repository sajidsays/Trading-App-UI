import 'package:flutter/material.dart';
import 'package:textfield_datepicker/textfield_datepicker.dart';
import 'package:tradingappui/pages/login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  String dropdownValue = 'Male';

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fill Your Profile',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              // Admin Logo Container Start
              Container(
                margin: EdgeInsets.only(top: 60),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 100,
                        backgroundImage: NetworkImage(
                            'https://www.pngmart.com/files/21/Admin-Profile-Vector-PNG-Clipart.png'),
                      ),
                    ),
                    Container(
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://www.e-xport.net/wp-content/uploads/1-14062_green-check-png-green-circle-check-mark.png-884x800.jpeg'),
                      ),
                    ),
                  ],
                ),
              ),
              // Admin Logo Container End
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
                      hintText: "Full Name",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(70),
                          borderSide: BorderSide(
                            color: Colors.grey.shade100,
                          )),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(70),
                          borderSide: BorderSide(
                            color: Colors.black,
                          ))),
                ),
              ),
              // Name Text Field End
              SizedBox(
                height: 20,
              ),
              // Nickname Text Field Start
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
                      hintText: "Nick Name",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(70),
                          borderSide: BorderSide(
                            color: Colors.grey.shade100,
                          )),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(70),
                          borderSide: BorderSide(
                            color: Colors.black,
                          ))),
                ),
              ),
              // Nickname Text Field End
              SizedBox(
                height: 20,
              ),
              // DOB Text Field Start
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(color: Colors.grey.shade100),
                    ]),
                child: TextField(
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1950),
                        lastDate: DateTime(2050));
                  },
                  decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.date_range_outlined,
                        color: Colors.black,
                      ),
                      hintText: "Date of Birth",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(70),
                          borderSide: BorderSide(
                            color: Colors.grey.shade100,
                          )),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(70),
                          borderSide: BorderSide(
                            color: Colors.black,
                          ))),
                ),
              ),
              // DOB Text Field End
              SizedBox(
                height: 20,
              ),
              // Email Text Field Start
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(color: Colors.grey.shade100),
                    ]),
                child: TextField(
                  decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.email_outlined,
                        color: Colors.black,
                      ),
                      hintText: "Email",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(70),
                          borderSide: BorderSide(
                            color: Colors.grey.shade100,
                          )),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(70),
                          borderSide: BorderSide(
                            color: Colors.black,
                          ))),
                ),
              ),
              // Email Text Field End
              SizedBox(
                height: 20,
              ),
              // Gender Text Field Start
              Container(
                  padding: EdgeInsets.only(left: 10),
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(color: Colors.grey.shade100),
                      ]),
                  child: DropdownButtonFormField(
                    decoration: InputDecoration(
                      // hintText: 'Gender',
                      enabledBorder: OutlineInputBorder(
                        //<-- SEE HERE
                        borderRadius: BorderRadius.circular(70),
                        borderSide:
                            BorderSide(color: Colors.grey.shade100, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        //<-- SEE HERE
                        borderRadius: BorderRadius.circular(70),
                        borderSide: BorderSide(color: Colors.black, width: 2),
                      ),
                      filled: true,
                      fillColor: Colors.grey.shade100,
                    ),
                    dropdownColor: Colors.grey.shade100,
                    value: dropdownValue,
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                    items: <String>['Male', 'Female']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(fontSize: 16, color: Colors.black54),
                        ),
                      );
                    }).toList(),
                  )),
              // Gender Text Field End
              SizedBox(
                height: 50,
              ),
              // Continue button Start
              Container(
                width: 350,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text(
                    'Continue',
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
              // Continue button End
            ],
          ),
        ),
      ),
    );
  }
}
