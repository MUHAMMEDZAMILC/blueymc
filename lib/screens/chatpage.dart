import 'package:blueymc/common/textstyle.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChatPage extends StatefulWidget {
  ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  _charBubble(String message, bool isMe) {
    if (isMe) {
      return Column(
        children: [
          Container(
            alignment: Alignment.topRight,
            child: Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width,
              ),
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Color(0xFF022542),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: const Text(
                'Hi , how are you ? ',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                '12:30pm',
                style: login,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage('assets/images/avatar.png'),
                ),
              ),
            ],
          ),
        ],
      );
    } else {
      return Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width,
              ),
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: const Text('Hi , how are you ? '),
            ),
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage('assets/images/avatar.png'),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                '12:30pm',
                style: login,
              ),
            ],
          ),
        ],
      );
    }
  }

  _sendMessageArea() {
    var messageController = TextEditingController();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 7.0),
      height: 70,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: TextField(
              controller: messageController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'Send a message..',
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              return _charBubble('hi', true);
            },
            icon: Icon(Icons.send),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'MZ',
          style: appbar,
        ),
        backgroundColor: const Color(0xFF022542),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.3,
              // decoration: containerdec,
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/avatar.png',
                    scale: 2,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text(
                    'MZ',
                    style: small2,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'View Profile',
                      style: login,
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Colors.white,
                      ),
                      side: MaterialStateProperty.all(
                          BorderSide(width: 1.0, color: Colors.black)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Text('data'),
            ),
            _sendMessageArea(),
          ],
        ),
      ),
    );
  }
}
