import 'package:chatapp/screens/call_info_screen.dart';
import 'package:chatapp/screens/chat_screen.dart';
import 'package:flutter/material.dart';

Widget chatCard(BuildContext context, String name,String time,String query,int count, String img){

  double opacity = 0;
  if(count>0){
    opacity = 1;
  }

  return InkWell(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen(name,img)),);
    },
    child: Column(
      children: [
        SizedBox(height: 8,),
        Row(
          children: [
            SizedBox(width: 16,),
            CircleAvatar(
              radius: 28,
              backgroundImage: AssetImage(img),
            ),
            SizedBox(width: 16,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: name.substring(0,query.length),
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w600,
                        fontSize: 16
                      ),
                      children: [
                        TextSpan(
                          text: name.substring(query.length),
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16
                          ),
                        )
                      ]
                    ),
                  ),
                  /*Text(
                    name,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                    ),
                  ),*/
                  SizedBox(height: 4,),
                  Text(
                      'Message'
                  )
                ],
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(time.toString()),
                Opacity(
                  opacity: opacity,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green
                    ),
                    child: Text(
                      count.toString(),
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(width: 16,)
          ],
        ),
        SizedBox(height: 8,)
      ],
    ),
  );
}

Widget callCard(BuildContext context, String name, String lastCall, String query, String img){
  return InkWell(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => CallInfo(name,img)),);
    },
    child: Column(
      children: [
        SizedBox(height: 8,),
        Row(
          children: [
            SizedBox(width: 16,),
            CircleAvatar(
              radius: 28,
              backgroundImage: AssetImage(img),
            ),
            SizedBox(width: 16,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                        text: name.substring(0,query.length),
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w600,
                            fontSize: 16
                        ),
                        children: [
                          TextSpan(
                            text: name.substring(query.length),
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16
                            ),
                          )
                        ]
                    ),
                  ),
                  SizedBox(height: 4,),
                  Text(
                      'Last Called : '+lastCall
                  )
                ],
              ),
            ),
            Icon(Icons.phone),
            SizedBox(width: 16,)
          ],
        ),
        SizedBox(height: 8,)
      ],
    ),
  );
}

Widget sentMessage(BuildContext context, String text, String time){
  return Container(
    padding: EdgeInsets.all(8),
    child: Row(
      children: [
        Expanded(
          child: Container(),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
            color: Color(0xFF8c9eff),
          ),
          constraints: BoxConstraints( maxWidth: MediaQuery.of(context).size.width*0.8),
          padding: EdgeInsets.symmetric(vertical: 4,horizontal: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                text,
                style: TextStyle(
                  color: Colors.white
                ),
              ),
              SizedBox(height: 4,),
              Text(
                time,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 11
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}

Widget recMessage(BuildContext context, String text, String time){
  return Container(
    padding: EdgeInsets.all(8),
    child: Row(
      children: [
        Container(
          constraints: BoxConstraints( maxWidth: MediaQuery.of(context).size.width*0.8),
          padding: EdgeInsets.symmetric(vertical: 4,horizontal: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              topLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            color: Colors.indigoAccent,
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(
                    color: Colors.white
                ),
              ),
              SizedBox(height: 4,),
              Text(
                time,
                style: TextStyle(
                    color: Colors.white,
                  fontSize: 11
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(),
        ),

      ],
    ),
  );
}

