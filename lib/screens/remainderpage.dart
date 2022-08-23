import 'package:blueymc/common/decoration.dart';
import 'package:blueymc/common/textstyle.dart';
import 'package:blueymc/screens/remaindermatch.dart';
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
                padding: EdgeInsets.all(8.0),
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
                          child: Align(
                            alignment: AlignmentDirectional.center,
                            child: ListTile(
                              title: const Text(
                                'Match Name',
                                style: name,
                              ),
                              subtitle: const Text('Sunday', style: name),
                              leading: const Icon(
                                Icons.sports_soccer,
                                size: 50,
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => RemainderMatch(),
                                  ),
                                );
                              },
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(height: 10);
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
