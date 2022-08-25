import 'package:blueymc/common/textstyle.dart';
import 'package:blueymc/screens/matchdetailspage.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MZ',
          style: appbar,
        ),
        backgroundColor: Color(0xFF022542),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 15,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.96,
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
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: const [
                                          // FaIcon(
                                          //   FontAwesomeIcons.calendarAlt,
                                          //   color: Colors.black,
                                          //   size: 20,
                                          // ),
                                          Icon(Icons.calendar_today),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            // data[index]['time'].toDate().toString().substring(0,16),
                                            '23-09-2022',
                                            // style: FlutterFlowTheme.subtitle1.override
                                            style: TextStyle(
                                              fontFamily: 'Lexend Deca',
                                              color: Color(0xFF151B1E),
                                              fontSize: 15,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text(
                                          // data[index]['uname'],
                                          'Match Name',
                                          // style:
                                          style: TextStyle(
                                            fontFamily: 'Lexend Deca',
                                            color: Color(0xFF151B1E),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    color: Color(0xFFDBE2E7),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 0),
                                      // child: AuthUserStreamWidget(
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
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
                            // Padding(
                            //   padding:
                            //       EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                            //   child: Row(
                            //     mainAxisSize: MainAxisSize.max,
                            //     children: [
                            //       Text(
                            //         // 'Time Slot : ${data[index]['slot'].toDate().toString().substring(0,16)}',
                            //         // style: FlutterFlowTheme.bodyText1
                            //         // .override
                            //         'Match Name:',
                            //         style: TextStyle(
                            //           fontFamily: 'Poppins',
                            //           color: Colors.black,
                            //         ),
                            //       ),
                            //     ],
                            //   ),
                            // ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
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
                            // Padding(
                            //   padding:
                            //       EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                            //   child: Row(
                            //     mainAxisSize: MainAxisSize.max,
                            //     children: [
                            //       // Text(
                            //       //   // 'Type : ${data[index]['type']}',
                            //       //   style: FlutterFlowTheme.bodyText1
                            //       //       .override(
                            //       //     fontFamily: 'Poppins',
                            //       //     color: Colors.black,
                            //       //   ),
                            //       // ),
                            //     ],
                            //   ),
                            // ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 4, 16, 10),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  // FlutterFlowIconButton(
                                  //   borderColor: Colors.transparent,
                                  //   borderRadius: 30,
                                  //   borderWidth: 1,
                                  //   buttonSize: 60,
                                  ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                        Color.fromARGB(214, 0, 7, 7),
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.check_circle,
                                      color: Color.fromARGB(255, 236, 236, 236),
                                      size: 30,
                                    ),
                                    onPressed: () async {
                                      // // DocumentSnapshot doc=data[0];
                                      // await doc.reference.update({
                                      //   'status':2,
                                      // });

                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (contaxt) =>
                                                  MatchDetailsPage()));
                                    },
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
      ),
    );
  }
}
