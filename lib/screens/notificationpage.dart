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
                return Card(
                  elevation: 10,
                  color: Colors.orangeAccent,
                  child: ListTile(
                    title: const Text('Match request by MZ'),
                    trailing: const Icon(Icons.info_outline),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MatchDetailsPage(),
                        ),
                      );
                    },
                  ),
                );
              }),
        ),
      ),
    );
  }
}
