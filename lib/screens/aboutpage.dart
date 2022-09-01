import 'package:blueymc/common/textstyle.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  AboutPage({Key? key}) : super(key: key);
  var feedbackController = new TextEditingController();
  var feedbackkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "About",
          style: appbar,
        ),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      body: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    """This is a mobile application our Blue YMC sports and arts club at tippunagar """,
                    style: TextStyle(fontSize: 20, fontFamily: 'Kaush'),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // Text("FeedBack",style: profile,),

              Container(
                width: 300,
                height: 350,
                // color: Colors.lightBlue,
                child: Form(
                  key: feedbackkey,
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.text,
                        // validator: (value){
                        //   return Validate.FeedbackValidator(value!);
                        // },
                        controller: feedbackController,
                        maxLines: 5,
                        maxLength: 200,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(0)),
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            labelText: "FeedBack",
                            hintText: "Enter your experience :"),
                      ),
                      // SizedBox(height: 48,),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: Container(
                          height: 50,
                          width: 270,
                          child: ElevatedButton(
                            onPressed: () {
                              feedbackkey.currentState!.validate();
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => HomePage()));
                            },
                            child: const Text(
                              "Submit",
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
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
  // showsnackbar(var msg){
  //   ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(
  //         elevation: 10,
  //         content: Text(msg),
  //         backgroundColor: Color(0xff8E2DE2),
  //       )
  //   );
  // };  