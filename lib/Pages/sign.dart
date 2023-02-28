import 'package:app/Model/data.dart';
import 'package:app/Pages/home.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class SignUP extends StatefulWidget {
  const SignUP({super.key});

  @override
  State<SignUP> createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  GlobalKey<FormState> _key = GlobalKey();
  bool check = true;
  String? password;
  String? image;
  String? name;
  String? email;
  String? mobile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: _key,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 120,
              ),
              Text(
                "Sign Up",
                style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.w800,
                    color: Color.fromARGB(255, 19, 140, 206)),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 330,
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Image link can\'t be empty';
                    }
                    image = value;
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: 'Image Link',
                    hintStyle: TextStyle(
                      fontSize: 23,
                      color: Color.fromARGB(220, 180, 180, 180),
                      fontWeight: FontWeight.w600,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 330,
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Username can\'t be empty';
                    }
                    name = value;
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: 'Username',
                    hintStyle: TextStyle(
                      fontSize: 23,
                      color: Color.fromARGB(220, 180, 180, 180),
                      fontWeight: FontWeight.w600,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 330,
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Email can\'t be empty';
                    }
                    email = value;
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: TextStyle(
                      fontSize: 23,
                      color: Color.fromARGB(220, 180, 180, 180),
                      fontWeight: FontWeight.w600,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 330,
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Mobile Number can\'t be empty';
                    }
                    mobile = value;
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: 'Mobile Number',
                    hintStyle: TextStyle(
                      fontSize: 23,
                      color: Color.fromARGB(220, 180, 180, 180),
                      fontWeight: FontWeight.w600,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 330,
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Password can\'t be empty';
                    }
                    password = value;
                    return null;
                  },
                  obscureText: check,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          check = !check;
                        });
                      },
                      icon: Icon(
                        check ? Icons.visibility : Icons.visibility_off,
                      ),
                    ),
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      fontSize: 23,
                      color: Color.fromARGB(220, 180, 180, 180),
                      fontWeight: FontWeight.w600,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 330,
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty || value != password) {
                      return 'Password does\'t match';
                    }

                    return null;
                  },
                  obscureText: check,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        check ? Icons.visibility : Icons.visibility_off,
                      ),
                    ),
                    hintText: 'Confirm Password',
                    hintStyle: TextStyle(
                      fontSize: 23,
                      color: Color.fromARGB(220, 180, 180, 180),
                      fontWeight: FontWeight.w600,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 200,
                height: 55,
                child: ElevatedButton(
                  onPressed: () async {
                    if (_key.currentState!.validate()) {
                      Provider.of<Data>(context, listen: false)
                          .saveImage(image!);
                      Provider.of<Data>(context, listen: false).saveName(name!);
                      Provider.of<Data>(context, listen: false)
                          .saveEmail(email!);
                      Provider.of<Data>(context, listen: false)
                          .saveMobile(mobile!);
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.rightToLeft,
                          child: Home(),
                        ),
                      );
                    }
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 23,
                      color: Colors.black,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amberAccent[200],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
