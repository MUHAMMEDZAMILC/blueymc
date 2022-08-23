import 'package:blueymc/common/decoration.dart';
import 'package:blueymc/common/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

bool currentUser = true;
dynamic senderId = 1;
dynamic isMe = 2;

// ignore: must_be_immutable
class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  _charBubble(String message, bool isMe) {
    if (isMe) {
      _messagess = _messagess + 1;
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
              child: Text(
                messageController.text,
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

  // List<dynamic> messages = const [
  //   Text('Hi how are you'),
  //   Text('I am fine '),
  //   Text('Nice to meet you'),
  //   Text('forever'),
  //   Text('Hi how are you1'),
  // ];
  int _messagess = 0;
  var messageController = TextEditingController();
  _sendMessageArea() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 7.0, vertical: 2.0),
      height: 70,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: TextField(
              controller: messageController,
              keyboardType: TextInputType.text,
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: const InputDecoration(
                fillColor: Colors.white,
                hintStyle: TextStyle(color: Colors.white),
                // prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  borderSide: BorderSide(
                    color: Colors.green,
                  ),
                ),
                hintText: "Send a message",
              ),
            ),
          ),
          SizedBox(width: 3),
          Container(
            width: 50,
            height: 50,
            decoration: containerdec53,
            child: Center(
              child: IconButton(
                  onPressed: () {
                    print(messageController.text);
                  },
                  icon: Icon(
                    Icons.send_sharp,
                    color: Color.fromARGB(255, 240, 240, 240),
                    size: 30,
                  ),
                  alignment: Alignment.center,
                  disabledColor: Colors.black12),
            ),
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
                    child: const Text(
                      'View Profile',
                      style: login,
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Colors.white,
                      ),
                      side: MaterialStateProperty.all(
                          const BorderSide(width: 1.0, color: Colors.black)),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _messagess,
                itemBuilder: (
                  BuildContext context,
                  int index,
                ) {
                  return _charBubble(messageController.text, true);
                },
              ),
            ),
            _sendMessageArea(),
          ],
        ),
      ),
    );
  }
}
