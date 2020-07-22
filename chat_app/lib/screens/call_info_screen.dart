import 'package:flutter/material.dart';

class CallInfo extends StatefulWidget {

  String name,img;


  CallInfo(this.name, this.img);

  @override
  _CallInfoState createState() => _CallInfoState(name,img);
}

class _CallInfoState extends State<CallInfo> {

  String name,img;


  _CallInfoState(this.name, this.img);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: (){Navigator.pop(context);},
                  ),
                  SizedBox(width: 4,),
                  Text(
                    'Call Info',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                  Expanded(child: Container(),),
                  Icon(Icons.chat),
                  SizedBox(width: 16,),
                  Icon(Icons.more_vert),
                  SizedBox(width: 16,),
                ],
              ),
              Divider(thickness: 0.5,),
              Row(
                children: [
                  SizedBox(width: 16,),
                  CircleAvatar(radius: 22, backgroundImage: AssetImage(img),),
                  SizedBox(width: 16,),
                  Text(
                    name,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                  Expanded(child: Container(),),
                  Icon(Icons.phone, color: Colors.indigoAccent,),
                  SizedBox(width: 16,),
                  Icon(Icons.videocam, color: Colors.indigoAccent,),
                  SizedBox(width: 16,),
                ],
              ),
              SizedBox(height: 24,),
              Text('July 21'),
              SizedBox(height: 16,),
              Row(
                children: [
                  SizedBox(width: 16,),
                  Icon(Icons.arrow_downward, color: Colors.indigoAccent,),
                  SizedBox(width: 16,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Incoming',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                        ),
                      ),
                      Text(
                        '3:49 AM',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Expanded(child: Container(),),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '27:38',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                        ),
                      ),
                      Text(
                        '223.4 MB',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 16,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
