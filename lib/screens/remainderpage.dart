import 'package:blueymc/common/decoration.dart';
import 'package:blueymc/common/textstyle.dart';
import 'package:flutter/material.dart';

class RemainderPage extends StatelessWidget {
  const RemainderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Remainder',
          style: appbar,
        ),
        backgroundColor: const Color(0xFF022542),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.separated(
                      scrollDirection: Axis.vertical,
                      itemCount: 15,
                      itemBuilder: (context, int index) {
                        return Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.12,
                          decoration: remainderCon,
                          child: const Align(
                            alignment: AlignmentDirectional.center,
                            child: ListTile(
                              title: Text(
                                'Match Name',
                                style: name,
                              ),
                              subtitle: Text('Sunday', style: name),
                              leading: Icon(
                                Icons.sports_soccer,
                                size: 50,
                              ),
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (BuildContetx, int index) {
                        return SizedBox(height: 10);
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
