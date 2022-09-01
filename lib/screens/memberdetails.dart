import 'package:blueymc/common/decoration.dart';
import 'package:blueymc/common/textstyle.dart';
import 'package:blueymc/screens/chat/chatingpageN.dart';
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
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
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
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.96,
                      height: MediaQuery.of(context).size.height * 0.52,
                      //color: Colors.lightBlue,
                      child: Column(
                        children: [
                          Expanded(
                            child: ListView.builder(
                                scrollDirection: Axis.vertical,
                                itemCount: 5,
                                itemBuilder: (BuildContext context, int index) {
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 10, 10, 10),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.98,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 4,
                                            color: Color(0x33000000),
                                            offset: Offset(0, 2),
                                          )
                                        ],
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 10, 10, 0),
                                        child: SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(16, 8, 16, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: const [
                                                            // FaIcon(
                                                            //   FontAwesomeIcons.calendarAlt,
                                                            //   color: Colors.black,
                                                            //   size: 20,
                                                            // ),
                                                            Icon(Icons
                                                                .calendar_today),
                                                            SizedBox(
                                                              width: 10,
                                                            ),
                                                            Text(
                                                              // data[index]['time'].toDate().toString().substring(0,16),
                                                              '23-09-2022',
                                                              // style: FlutterFlowTheme.subtitle1.override
                                                              style: TextStyle(
                                                                fontFamily:
                                                                    'Lexend Deca',
                                                                color: Color(
                                                                    0xFF151B1E),
                                                                fontSize: 15,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        const Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  8.0),
                                                          child: Text(
                                                            // data[index]['uname'],
                                                            'Match Name',
                                                            // style:
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'Lexend Deca',
                                                              color: Color(
                                                                  0xFF151B1E),
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Card(
                                                      clipBehavior: Clip
                                                          .antiAliasWithSaveLayer,
                                                      color: Color(0xFFDBE2E7),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 0, 0, 0),
                                                        // child: AuthUserStreamWidget(
                                                        child: Container(
                                                          width: 50,
                                                          height: 50,
                                                          clipBehavior:
                                                              Clip.antiAlias,
                                                          decoration:
                                                              BoxDecoration(
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                          //   child: CachedNetworkImage(
                                                          //     imageUrl: data[index]['photoUrl'],
                                                          // ),
                                                          child: Image.asset(
                                                            'assets/images/avatar.png',
                                                            fit: BoxFit.cover,
                                                            scale: 1,
                                                          ),
                                                          // ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(10, 0, 0, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      // 'Location : ${data[index]['location']}',
                                                      'Location :Zyco',
                                                      // style: FlutterFlowTheme.bodyText1
                                                      // .override(
                                                      style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(10, 10, 10, 10),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      // 'Location : ${data[index]['location']}',
                                                      'Marks: 10:9',
                                                      // style: FlutterFlowTheme.bodyText1
                                                      // .override(
                                                      style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
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
