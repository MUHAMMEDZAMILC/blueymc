import 'package:blueymc/common/clippath.dart';
import 'package:blueymc/common/textstyle.dart';
import 'package:blueymc/common/validator.dart';
import 'package:blueymc/screens/admin/adminhomepage.dart';
import 'package:blueymc/screens/home/homepage.dart';
import 'package:blueymc/screens/authentication/registrationpae.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var loginKey = GlobalKey<FormState>();

  var emailController = TextEditingController();

  var passwordController = TextEditingController();
  late bool passwordVisibility;
  late bool passwordLoginVisibility;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    passwordVisibility = false;
    passwordLoginVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              MyClipPath(),
              const SizedBox(
                height: 80,
              ),
              Form(
                key: loginKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          return Validate.emailValidator(value!);
                        },
                        controller: emailController,
                        decoration: const InputDecoration(
                            suffixIcon: Icon(Icons.email),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.green,
                              ),
                            ),
                            hintText: "Enter your email id:",
                            labelText: 'Email:'),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: TextFormField(
                        obscureText: !passwordVisibility,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          return Validate.AdpwdValidator(value!);
                        },
                        controller: passwordController,
                        decoration: InputDecoration(
                          suffixIcon: InkWell(
                            onTap: () => setState(
                              () => passwordVisibility = !passwordVisibility,
                            ),
                            child: Icon(
                              passwordVisibility
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              color: Color(0xFF95A1AC),
                              size: 20,
                            ),
                          ),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.green,
                            ),
                          ),
                          hintText: "Enter your password",
                          labelText: 'Password',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Container(
                        height: 50,
                        width: 270,
                        child: ElevatedButton(
                          onPressed: () {
                            if (loginKey.currentState!.validate()) {
                              if (emailController.text ==
                                      'masterzing049@gmail.com' &&
                                  passwordController.text == '8086851333') {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const AdminHomePage()));
                              } else {
                                FirebaseAuth.instance
                                    .signInWithEmailAndPassword(
                                        email: emailController.text,
                                        password: passwordController.text)
                                    .then((value) => FirebaseFirestore.instance
                                            .collection('login')
                                            .doc(value.user!.uid)
                                            .get()
                                            .then((value) {
                                          if (value.data()!['usertype'] ==
                                                  'member' ||
                                              value.data()!['usertype'] ==
                                                      'player' &&
                                                  value.data()!['status'] ==
                                                      1) {
                                            FirebaseFirestore.instance
                                                .collection('member')
                                                .doc(value.data()!['uid'])
                                                .get()
                                                .then(
                                                    (value) => Navigator
                                                            .pushReplacement(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (context) =>
                                                                      HomePage(
                                                                        uid: value
                                                                            .data()!['uid'],
                                                                        name: value
                                                                            .data()!['name'],
                                                                        email: value
                                                                            .data()!['email'],
                                                                        phonenumber:
                                                                            value.data()!['phonenumber'],
                                                                        usertype:
                                                                            value.data()!['usertype'],
                                                                      )),
                                                        ));
                                          } else {
                                            showsnackbar('Cannot Login!');
                                          }
                                        }))
                                    .catchError((e) => showsnackbar(
                                        ' Invalid Username or Password'));
                              }
                            }
                            // loginKey.currentState!.validate();
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => HomePage()));
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ButtonStyle(
                            shadowColor:
                                MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.all(
                              const Color(0xFFFF3815),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have an acount?",
                          style: login,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegistrationPage()));
                          },
                          child: const Text(
                            " Sign Up Now",
                            style: sign,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  showsnackbar(var msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(msg),
      //backgroundColor: ,
    ));
  }
}
