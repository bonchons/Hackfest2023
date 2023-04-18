import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Chat Message',
        home: ChatMessageScreen(),
      );
}

class ChatMessageScreen extends StatelessWidget {
  final _chatName = 'User 1';
  final _messages = [
    ChatMessage('Hi, how are you?', true),
    ChatMessage('I am doing well, thanks. How about you?', false),
    ChatMessage('I am fine too, thanks for asking!', true),
    ChatMessage('Great to hear that!', false),
    ChatMessage('Would you like to grab a coffee sometime?', true),
    ChatMessage('Sure, I would love that!', false),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.of(context).pop()),
          title: Row(children: <Widget>[
            CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://media.istockphoto.com/id/453100595/photo/emergency-symbol.jpg?s=612x612&w=0&k=20&c=KXJZSiTGH1cSabCG-uy067wSeZbK4KYllgdxc-i-NcM=')),
            SizedBox(width: 8.0),
            Text(_chatName),
          ]),
        ),
        body: Column(children: <Widget>[
          Expanded(
              child: ListView.builder(
                  itemCount: _messages.length,
                  itemBuilder: (context, index) => _messages[index])),
          Container(
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(color: Colors.grey[300]),
              child: Row(children: <Widget>[
                IconButton(
                    icon: Icon(Icons.insert_emoticon),
                    onPressed: () {/* TODO: open emoji picker */}),
                IconButton(
                    icon: Icon(Icons.attach_file),
                    onPressed: () {/* TODO: open file picker */}),
                Expanded(
                    child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Type a message...', border: InputBorder.none),
                  onSubmitted: (value) {/* TODO: add message to chat */},
                )),
                IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () {/* TODO: add message to chat */}),
              ])),
        ]),
      );
}

class ChatMessage extends StatelessWidget {
  final message;
  final isSent;

  ChatMessage(this.message, this.isSent);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
            mainAxisAlignment:
                isSent ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: <Widget>[
              if (!isSent)
                CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://media.istockphoto.com/id/453100595/photo/emergency-symbol.jpg?s=612x612&w=0&k=20&c=KXJZSiTGH1cSabCG-uy067wSeZbK4KYllgdxc-i-NcM=')),
              SizedBox(width: 8.0),
              Flexible(
                child: Container(
                  padding: EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: isSent ? Colors.blue : Colors.grey[300]),
                  child: Text(
                    message,
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                ),
              ),
            ]));
  }
}
