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
        backgroundColor: Color(0xFF022542),
      ),
      body: Container(
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
                    style: small2,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // Text("FeedBack",style: profile,),

              Container(
                width: 300,
                height: 300,
                //color: Colors.lightBlue,
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
                        maxLines: 9,
                        maxLength: 200,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            hintText: "FeedBack"),
                      ),
                      // SizedBox(height: 48,),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Submit"),
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.lightBlueAccent),
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