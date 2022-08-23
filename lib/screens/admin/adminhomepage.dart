import 'package:blueymc/common/decoration.dart';
import 'package:blueymc/common/textstyle.dart';
import 'package:flutter/material.dart';

class AdminHomePage extends StatelessWidget {
  const AdminHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Admin',
          style: appbar,
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.width * 0.6,
                child: Image.asset('assets/images/logo.png'),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.width * 0.4,
                      decoration: containerdec4,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: const [
                            Icon(
                              Icons.man,
                              size: 50,
                              color: Colors.white,
                            ),
                            Text(
                              'Members',
                              style: name2,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  onTap: () {},
                ),
                GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.width * 0.4,
                      decoration: containerdec4,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: const [
                            Icon(
                              Icons.sports_soccer_outlined,
                              size: 50,
                              color: Colors.white,
                            ),
                            Text(
                              'Matches',
                              style: name2,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.width * 0.4,
                      decoration: containerdec4,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: const [
                            Icon(
                              Icons.feedback,
                              size: 50,
                              color: Colors.white,
                            ),
                            Text(
                              'FeedBacks',
                              style: name2,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  onTap: () {},
                ),
                GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.width * 0.4,
                      decoration: containerdec4,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: const [
                            Icon(
                              Icons.man,
                              size: 50,
                              color: Colors.white,
                            ),
                            Text(
                              'Members',
                              style: name2,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
