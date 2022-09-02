import 'package:blueymc/common/clippath.dart';
import 'package:blueymc/common/textstyle.dart';
import 'package:blueymc/common/validator.dart';
import 'package:blueymc/screens/admin/adminhomepage.dart';
import 'package:blueymc/screens/homepage.dart';
import 'package:blueymc/screens/loginpage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmController = TextEditingController();
  var numberController = TextEditingController();
  var status;

  late bool passwordDVisibility;
  late bool passwordCVisibility;
  var registerKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    passwordDVisibility = false;
    passwordCVisibility = false;
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
              MyClipPath2(),
              const SizedBox(
                height: 80,
              ),
              Form(
                  key: registerKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          validator: (value) {
                            return Validate.NameValidator(value!);
                          },
                          controller: nameController,
                          decoration: const InputDecoration(
                              suffixIcon: Icon(Icons.person),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
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
                                //borderRadius: BorderRadius.all(Radius.circular(20)),
                                borderSide: BorderSide(
                                  color: Colors.green,
                                ),
                              ),
                              hintText: "Enter your username:*",
                              labelText: 'Username'),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: TextFormField(
                          obscureText: false,
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            return Validate.numberValidator(value!);
                          },
                          controller: numberController,
                          decoration: const InputDecoration(
                              suffixIcon: Icon(Icons.phone),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
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
                                // borderRadius: BorderRadius.all(Radius.circular(20)),
                                borderSide: BorderSide(
                                  color: Colors.green,
                                ),
                              ),
                              labelText: "Phone Number ",
                              hintText: 'Enter your phone number:*'),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            return Validate.emailValidator(value!);
                          },
                          controller: emailController,
                          decoration: const InputDecoration(
                              suffixIcon: Icon(Icons.email_sharp),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
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
                                // borderRadius: BorderRadius.all(Radius.circular(20)),
                                borderSide: BorderSide(
                                  color: Colors.green,
                                ),
                              ),
                              labelText: "E-Mail Id",
                              hintText: 'Enter your email id:*'),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: DropdownButtonFormField<String>(
                          value: status,
                          decoration: const InputDecoration(
                            labelText: "Status",
                            hintText: 'Select your status:*',
                            suffixIcon: Icon(Icons.card_membership),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
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
                              // borderRadius: BorderRadius.all(Radius.circular(20)),
                              borderSide: BorderSide(
                                color: Colors.green,
                              ),
                            ),
                          ),
                          onChanged: (ctgry) => setState(() => status = ctgry),
                          validator: (value) =>
                              value == null ? 'field required' : null,
                          items: [
                            'player',
                            'member',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: TextFormField(
                          obscureText: !passwordDVisibility,
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            return Validate.pwdValidator(value!);
                          },
                          controller: passwordController,
                          decoration: InputDecoration(
                            suffixIcon: InkWell(
                              onTap: () => setState(
                                () =>
                                    passwordDVisibility = !passwordDVisibility,
                              ),
                              child: Icon(
                                passwordDVisibility
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                size: 20,
                              ),
                            ),
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              //borderRadius: BorderRadius.all(Radius.circular(20)),
                              borderSide: BorderSide(
                                color: Colors.green,
                              ),
                            ),
                            labelText: "Password",
                            hintText: "Enter your password:*",
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: TextFormField(
                          obscureText: !passwordCVisibility,
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            return Validate.pwdValidator(value!);
                          },
                          controller: confirmController,
                          decoration: InputDecoration(
                              suffixIcon: InkWell(
                                onTap: () => setState(
                                  () => passwordCVisibility =
                                      !passwordCVisibility,
                                ),
                                child: Icon(
                                  passwordCVisibility
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                  size: 20,
                                ),
                              ),
                              border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 82, 77, 77),
                                ),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                //borderRadius: BorderRadius.all(Radius.circular(20)),
                                borderSide: BorderSide(
                                  color: Colors.green,
                                ),
                              ),
                              labelText: "Comfirm Password",
                              hintText: 'Enter confirm password:*'),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: Container(
                          height: 50,
                          width: 270,
                          child: ElevatedButton(
                            onPressed: () {
                              if (registerKey.currentState!.validate()) {
                                FirebaseAuth.instance
                                    .createUserWithEmailAndPassword(
                                        email: emailController.text,
                                        password: passwordController.text)
                                    .then((value) {
                                  FirebaseFirestore.instance
                                      .collection('login')
                                      .doc(value.user!.uid)
                                      .set({
                                        'uid': value.user!.uid,
                                        'name': nameController.text,
                                        'email': emailController.text,
                                        'password': passwordController.text,
                                        'usertype': 'member',
                                        'status': 1,
                                      })
                                      .then((val) => FirebaseFirestore.instance
                                              .collection('member')
                                              .doc(value.user!.uid)
                                              .set({
                                            'uid': value.user!.uid,
                                            'email': emailController.text,
                                            'password': passwordController.text,
                                            'name': nameController.text,
                                            'usertype': status,
                                            'status': 1,
                                            'phonenumber':
                                                numberController.text,
                                            'date': DateTime.now()
                                          }))
                                      .then((value) {
                                        showsnackbar('Successfuly Registered');
                                        Navigator.pop(context);
                                      });
                                }).catchError((e) =>
                                        showsnackbar('Registration Failed'));
                              }
                              ;
                            },
                            child: Text(
                              "Sign Up",
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
                            "Alraedy a member?",
                            style: login,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()));
                            },
                            child: const Text(
                              " Login In Now",
                              style: sign,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ))
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
