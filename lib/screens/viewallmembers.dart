import 'package:blueymc/common/textstyle.dart';
import 'package:blueymc/screens/memberdetails.dart';
import 'package:flutter/material.dart';

class ViewAllMembers extends StatelessWidget {
  const ViewAllMembers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        title: Text(
          'Club Members',
          style: appbar,
        ),
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
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16, 8, 110, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    color: Color(0xFFDBE2E7),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: Container(
                                      width: 50,
                                      height: 50,

                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        // color: Colors.amber,
                                        shape: BoxShape.circle,
                                      ),
                                      //   child: CachedNetworkImage(
                                      //     imageUrl: data[index]['photoUrl'],
                                      // ),
                                      child: Image.asset(
                                        'assets/images/avatar.png',
                                        fit: BoxFit.cover,
                                        // scale: 1,
                                        width: 50,
                                        height: 50,
                                      ),
                                      // ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      // data[index]['uname'],
                                      'Master Zing',
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
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                              child: Row(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      // data[index]['uname'],
                                      'Master Zing',
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
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    // 'Location : ${data[index]['location']}',
                                    'Location :Thazhekode',
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
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 4, 16, 10),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
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
                                                  MemberDetailsPage()));
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
