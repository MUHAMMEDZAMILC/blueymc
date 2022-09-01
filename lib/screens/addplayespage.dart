import 'package:blueymc/common/textstyle.dart';
import 'package:flutter/material.dart';

class AddPlayers extends StatelessWidget {
  const AddPlayers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: const Text(
          'Match Name',
          style: appbar,
        ),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
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
                    leading: Image.asset('assets/images/avatar.png'),
                    title: const Text('Mz'),
                    subtitle: const Text('★★★★★'),
                    trailing: const Icon(Icons.person_add_alt),
                    onTap: () {},
                  ),
                );
              }),
        ),
      ),
    );
  }
}
