import 'package:blueymc/common/textstyle.dart';
import 'package:blueymc/screens/editprofilepage.dart';
import 'package:blueymc/theme/themeeditpage.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        title: Text(
          'Settings',
          style: appbar,
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                leading: const Icon(
                  Icons.edit,
                  size: 30,
                  color: Colors.white,
                ),
                title: const Text(
                  'Edit Profile',
                  style: small,
                ),
                subtitle: const Text(
                  'Upload Profile Picture & Edit your Data',
                  style: sign,
                ),
                tileColor: Colors.grey,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditProfilePage(),
                    ),
                  );
                },
              ),
              const Divider(
                height: 1,
                color: Colors.white,
              ),
              ListTile(
                leading: const Icon(
                  Icons.format_color_fill,
                  size: 30,
                  color: Colors.white,
                ),
                title: const Text(
                  'Theme',
                  style: small,
                ),
                subtitle: const Text(
                  'Light & Dark Theme',
                  style: sign,
                ),
                tileColor: Colors.grey,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (contaext) => const ThemeEditPage()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
