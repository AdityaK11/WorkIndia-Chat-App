import 'dart:async';

import 'package:chatapp/models/message_model.dart';
import 'package:chatapp/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ChatScreen extends StatefulWidget {

  String username;
  String img;

  ChatScreen(this.username,this.img);

  @override
  _ChatScreenState createState() => _ChatScreenState(username,img);
}

class _ChatScreenState extends State<ChatScreen> {

  List<Message> messages = new List<Message>();
  String username;
  String img;

  final TextEditingController _textController = new TextEditingController();

  void _handleSubmitted(String text) {
    _textController.clear();
    Message message = new Message(
        text,DateFormat.jm().format(DateTime.now()),true
    );
    setState(() {
      messages.insert(messages.length, message);
    });
  }

  _ChatScreenState(this.username,this.img);

  @override
  void initState() {
    super.initState();
    getList();
  }

  final _controller = ScrollController();

  @override
  Widget build(BuildContext context) {

    Timer(
      Duration(milliseconds: 1),
          () => _controller.jumpTo(_controller.position.maxScrollExtent),
    );

    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 16),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: (){Navigator.pop(context);},
                  ),
                  SizedBox(width: 4,),
                  CircleAvatar(radius: 22, backgroundImage: AssetImage(img),),
                  SizedBox(width: 16,),
                  Text(
                    username,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  Expanded(child: Container(),),
                  SizedBox(width: 16,),
                ],
              ),
              SizedBox(height: 8,),
              Expanded(
                child: ListView.builder(
                  controller: _controller,
                    itemCount: messages.length,
                    itemBuilder: (BuildContext ctxt, int index) {
                      if(messages.elementAt(index).sent ){
                        return sentMessage(context, messages.elementAt(index).text,messages.elementAt(index).time);
                      }
                      return recMessage(context, messages.elementAt(index).text,messages.elementAt(index).time);
                    }
                ),
              ),
              Container(
                margin: EdgeInsets.all(8),

                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: ShapeDecoration(
                            shape: StadiumBorder(),
                            color: Color(0xFFD3D3D3)
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 16,),
                            Icon(Icons.person),
                            Expanded(
                              child: TextField(
                                controller: _textController,
                                onSubmitted: _handleSubmitted,
                                cursorColor: Colors.black,
                                decoration: new InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    contentPadding:
                                    EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                                    hintText: "Type a message"),
                              ),
                            ),
                            SizedBox(width: 8,),
                            Icon(Icons.attach_file),
                            SizedBox(width: 16,),
                            Icon(Icons.camera_alt),
                            SizedBox(width: 16,),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 8,),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.indigo,
                      ),

                      child: IconButton(
                        color: Colors.indigo,
                        icon: Icon(Icons.mic, color: Colors.white,),
                      ),
                    )
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }



  void getList() {
    messages.add(new Message("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.-1", "2:03 PM", false));
    messages.add(new Message("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.-1", "2:03 PM", true));
    messages.add(new Message("Message-1", "2:03 PM", true));
    messages.add(new Message("Message-1", "2:03 PM", false));
    messages.add(new Message("Message-1", "2:03 PM", true));
    messages.add(new Message("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.-1", "2:03 PM", false));
    messages.add(new Message("Message-1", "2:03 PM", true));
    messages.add(new Message("Message-1", "2:03 PM", false));
    messages.add(new Message("Message-1", "2:03 PM", false));
    messages.add(new Message("Message-1", "2:03 PM", true));
    messages.add(new Message("Message-1", "2:03 PM", false));
    messages.add(new Message("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.-1", "2:03 PM", true));
    messages.add(new Message("Message-1", "2:03 PM", false));
    messages.add(new Message("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.-1", "2:03 PM", true));
    messages.add(new Message("Message-1", "2:03 PM", true));
    messages.add(new Message("Message-1", "2:03 PM", false));
    messages.add(new Message("Message-1", "2:03 PM", false));
    messages.add(new Message("Message-1", "2:03 PM", true));
    messages.add(new Message("Message-1", "2:03 PM", true));
    messages.add(new Message("Message-1", "2:03 PM", false));
    messages.add(new Message("Message-1", "2:03 PM", true));
    messages.add(new Message("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.-1", "2:03 PM", false));
    messages.add(new Message("Message-1", "2:03 PM", true));
    messages.add(new Message("Message-1", "2:03 PM", false));
    messages.add(new Message("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.-1", "2:03 PM", true));
    print(messages.length);
  }
}
