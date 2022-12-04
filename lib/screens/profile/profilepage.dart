import 'package:blueymc/common/clippathtop.dart';
import 'package:blueymc/common/textstyle.dart';
import 'package:blueymc/screens/settings/settingcontents/editprofilepage.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.only(right: 16),
            child: Row(
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back, color: Color(0xFFFFFFFF)),
                ),
                const SizedBox(
                  width: 2,
                ),
                const Text(
                  'MasterZing',
                  style: appbar,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 140.0),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EditProfilePage(),
                          ),
                        );
                      },
                      child: Icon(Icons.edit, color: Colors.white)),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  Image.asset(
                    'assets/images/avatar.png',
                    width: MediaQuery.of(context).size.width / 1.9,
                    height: MediaQuery.of(context).size.width / 1.9,
                  ),
                  WavyHeader(),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  tileColor: Color(0xFF023B69),
                  leading: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Username',
                    style: sign,
                  ),
                  subtitle: Text(
                    'MasterZing',
                    style: tilesub,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  tileColor: Color(0xFF023B69),
                  leading: Icon(
                    Icons.mail,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Email Id',
                    style: sign,
                  ),
                  subtitle: Text(
                    'mzofficial049@gmail.com',
                    style: tilesub,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  tileColor: Color(0xFF023B69),
                  leading: Icon(
                    Icons.phone,
                    color: Colors.white,
                  ),
                  title: Text(
                    'PhomeNumber',
                    style: sign,
                  ),
                  subtitle: Text(
                    '808685133',
                    style: tilesub,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  tileColor: Color(0xFF023B69),
                  leading: Icon(
                    Icons.card_membership_sharp,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Status in Club',
                    style: sign,
                  ),
                  subtitle: Text(
                    'Member',
                    style: tilesub,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
