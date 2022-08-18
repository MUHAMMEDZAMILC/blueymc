import 'package:blueymc/common/decoration.dart';
import 'package:blueymc/common/textstyle.dart';
import 'package:flutter/material.dart';

class MemberDetailsPage extends StatefulWidget {
  MemberDetailsPage({Key? key}) : super(key: key);

  @override
  State<MemberDetailsPage> createState() => _MemberDetailsPageState();
}

class _MemberDetailsPageState extends State<MemberDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF022542),
        title: const Text(
          'MZ',
          style: appbar,
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(0.9),
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.5,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 70,
                    top: 70,
                    right: 0,
                    bottom: 20,
                  ),
                  child: Container(
                    width: 260,
                    height: 200,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          child: Container(
                            decoration: containerdec,
                            height: 260,
                            width: 200,
                          ),
                        ),
                        Positioned(
                          top: 0,
                          child: Container(
                            decoration: containerdec2,
                            height: 170,
                            width: 200,
                          ),
                        ),
                        Positioned(
                          top: 20,
                          left: 60,
                          child: Image.asset(
                            'assets/images/avatar.png',
                            scale: 2.5,
                          ),
                        ),
                        const Positioned(
                            top: 110,
                            left: 90,
                            child: Text(
                              'MZ',
                              style: name,
                            )),
                        const Positioned(
                            top: 130,
                            left: 65,
                            child: Text(
                              '★★★★★',
                              style: name,
                            )),
                        Positioned(
                          top: 190,
                          left: 67,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MemberDetailsPage(),
                                ),
                              );
                            },
                            child: Icon(
                              Icons.arrow_forward_rounded,
                              color: Colors.black,
                            ),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.all(
                                Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
