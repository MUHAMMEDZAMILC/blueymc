import 'package:blueymc/common/decoration.dart';
import 'package:blueymc/common/textstyle.dart';
import 'package:blueymc/screens/chatingpageN.dart';
import 'package:blueymc/screens/chatpage.dart';
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
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ChatingPageNew()));
              },
              child: const Icon(Icons.chat_rounded),
            ),
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(0.9),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 79,
                      top: 70,
                      right: 79.0,
                      bottom: 20,
                    ),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      // decoration: BoxDecoration(color: Colors.yellow),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 0,
                            child: Container(
                              decoration: containerdec3,
                              height: 260,
                              width: 200,
                            ),
                          ),
                          Positioned(
                            top: 0,
                            child: Container(
                              decoration: containerdec4,
                              height: 170,
                              width: 200,
                            ),
                          ),
                          Positioned(
                            top: 120,
                            left: 45,
                            child: Image.asset(
                              'assets/images/avatar.png',
                              scale: 2,
                            ),
                          ),
                          const Positioned(
                              top: 20,
                              left: 79,
                              child: Text(
                                'MZ',
                                style: name2,
                              )),
                          const Positioned(
                              top: 50,
                              left: 47,
                              child: Text(
                                '★★★★★',
                                style: name2,
                              )),
                          Positioned(
                            top: 290,
                            left: 0,
                            child: Row(
                              // crossAxisAlignment: Cross,
                              children: [
                                const SizedBox(
                                  width: 4,
                                ),
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: containerdec5,
                                  child: const Icon(
                                    Icons.call,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                GestureDetector(
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: containerdec51,
                                    child: const Icon(
                                      Icons.message_rounded,
                                      color: Colors.white,
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => ChatPage(),
                                      ),
                                    );
                                  },
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: containerdec52,
                                  child: const Icon(
                                    Icons.thumb_up,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 18.0),
                    child: Text(
                      "Activities",
                      style: activity,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.90,
                      height: MediaQuery.of(context).size.height * 0.32,
                      //color: Colors.lightBlue,
                      child: Column(
                        children: [
                          Expanded(
                            child: ListView.builder(
                                scrollDirection: Axis.vertical,
                                itemCount: 5,
                                itemBuilder: (BuildContext context, int index) {
                                  return const Card(
                                    elevation: 10,
                                    color: Colors.orangeAccent,
                                    child: ListTile(
                                      leading: Icon(
                                        Icons.sports_baseball,
                                        size: 50,
                                        color: Colors.grey,
                                      ),
                                      title: Text('Mz'),
                                      subtitle: Text('marks'),
                                    ),
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
