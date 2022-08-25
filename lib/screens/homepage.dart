import 'package:blueymc/common/decoration.dart';
import 'package:blueymc/common/textstyle.dart';
import 'package:blueymc/screens/aboutpage.dart';
import 'package:blueymc/screens/loginpage.dart';
import 'package:blueymc/screens/matchaddpage.dart';
import 'package:blueymc/screens/memberdetails.dart';
import 'package:blueymc/screens/notificationpage.dart';
import 'package:blueymc/screens/profilepage.dart';
import 'package:blueymc/screens/remainderpage.dart';
import 'package:blueymc/screens/settingspage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              width: double.infinity,
              height: 200.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    child: Image.asset(
                      'assets/images/avatar.png',
                      height: 120,
                      width: 120,
                      scale: 1,
                    ),
                  ),
                  const Text(
                    'MZ',
                    style: profile,
                  )
                ],
              ),
            ),
            const Divider(),
            Container(
              child: Padding(
                padding: EdgeInsets.only(left: 0.0),
                child: Column(
                  children: [
                    ListTile(
                      title: Text('Profile'),
                      trailing: Icon(Icons.person),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfilePage(),
                          ),
                        );
                      },
                    ),
                    const Divider(),
                    ListTile(
                      title: Text('Remainder'),
                      trailing: Icon(Icons.list_alt_rounded),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RemainderPage()),
                        );
                      },
                    ),
                    const Divider(),
                    ListTile(
                      title: Text('Settings'),
                      trailing: Icon(Icons.settings),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SettingsPage()),
                        );
                      },
                    ),
                    const Divider(),
                    ListTile(
                      title: Text('About'),
                      trailing: Icon(Icons.info),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AboutPage()));
                      },
                    ),
                    const Divider(
                      color: Colors.black26,
                    ),
                    const ListTile(
                      title: Text('Invite Friends'),
                      trailing: Icon(Icons.share),
                      // onTap: (){},
                    ),
                    const Divider(),
                    ListTile(
                      title: Text('Logout'),
                      trailing: Icon(Icons.logout),
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0.0,
        title: const Text(
          'BlueYMC',
          style: appbar,
        ),
        backgroundColor: const Color(0xFF022542),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: const Icon(Icons.search),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NotificationPage()));
              },
              child: const Icon(Icons.notifications),
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
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: Image.asset(
                    'assets/images/sport.gif',
                    width: double.infinity,
                  ),
                  // decoration: BoxDecoration(color: Colors.blueAccent),
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 30.0, right: 30.0, bottom: 0.0, top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Club Members",
                      style: hmehead,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "View All ",
                        style: hmehead,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.35,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 10,
                        right: 0,
                        bottom: 20,
                      ),
                      child: Container(
                        width: 160,
                        height: 180,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 0,
                              child: Container(
                                decoration: containerdec,
                                height: 200,
                                width: 150,
                              ),
                            ),
                            Positioned(
                              top: 0,
                              child: Container(
                                decoration: containerdec2,
                                height: 140,
                                width: 150,
                              ),
                            ),
                            Positioned(
                              top: 10,
                              left: 40,
                              child: Image.asset(
                                'assets/images/avatar.png',
                                scale: 3,
                              ),
                            ),
                            const Positioned(
                                top: 90,
                                left: 65,
                                child: Text(
                                  'MZ',
                                  style: name,
                                )),
                            const Positioned(
                                top: 110,
                                left: 42,
                                child: Text(
                                  '★★★★★',
                                  style: name,
                                )),
                            Positioned(
                              top: 150,
                              left: 42,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MemberDetailsPage(),
                                    ),
                                  );
                                },
                                child: Icon(
                                  Icons.arrow_forward_rounded,
                                  color: Colors.black,
                                ),
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                  backgroundColor: MaterialStateProperty.all(
                                    Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 30.0, right: 30.0, bottom: 0.0, top: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Club Players",
                      style: hmehead,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "View All ",
                        style: hmehead,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.35,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 10,
                        right: 0,
                        bottom: 20,
                      ),
                      child: Container(
                        width: 160,
                        height: 180,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 0,
                              child: Container(
                                decoration: containerdec,
                                height: 200,
                                width: 150,
                              ),
                            ),
                            Positioned(
                              top: 0,
                              child: Container(
                                decoration: containerdec2,
                                height: 140,
                                width: 150,
                              ),
                            ),
                            Positioned(
                              top: 10,
                              left: 40,
                              child: Image.asset(
                                'assets/images/avatar.png',
                                scale: 3,
                              ),
                            ),
                            const Positioned(
                                top: 90,
                                left: 65,
                                child: Text(
                                  'MZ',
                                  style: name,
                                )),
                            const Positioned(
                                top: 110,
                                left: 42,
                                child: Text(
                                  '★★★★★',
                                  style: name,
                                )),
                            Positioned(
                              top: 150,
                              left: 42,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MemberDetailsPage(),
                                    ),
                                  );
                                },
                                child: Icon(
                                  Icons.arrow_forward_rounded,
                                  color: Colors.black,
                                ),
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                  backgroundColor: MaterialStateProperty.all(
                                    Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MatchAddPage(),
            ),
          );
        },
        // tooltip: 'Increment',
        // icon: new Icon(Icons.add),
        label: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomAppBar(
        clipBehavior: Clip.antiAlias,
        color: Colors.cyan,
        shape: const CircularNotchedRectangle(),
        child: Material(
          child: SizedBox(
            width: double.infinity,
            height: 60.0,
          ),
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
