import 'package:chatapp/helper/user_list.dart';
import 'package:chatapp/models/user_model.dart';
import 'package:chatapp/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'fragment_call.dart';
import 'fragment_chat.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<User> users = new List<User>();
  bool visibility = true;
  int total = 6;

  initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      // navigation bar color
      statusBarColor: Colors.white, // status bar color
    ));

    users = new UserList().getUsers();
  }

  void root(int i){
    setState(() {
      total -= i;
      if(total<0){
        total = 0;
      }
      if(total==0){
        visibility = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Builder(builder: (BuildContext context) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: Container(
              padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 16,),
                      Icon(Icons.menu),
                      Expanded(
                        child: Center(
                            child: Text(
                              'WorkIndia',
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600
                              ),
                            )
                        ),
                      ),
                      InkWell(
                          onTap: (){
                            //showSearch(context: context, delegate: DataSearch(users,false));
                            int index = DefaultTabController.of(context).index;
                            if(index==0){
                              showSearch(context: context, delegate: DataSearch(users,true));
                            }else{
                              showSearch(context: context, delegate: DataSearch(users,false));
                            }

                          },
                          child: Icon(Icons.search)
                      ),
                      SizedBox(width: 16,),
                    ],
                  ),
                  SizedBox(height: 16,),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        TabBar(
                            isScrollable: true,
                            labelStyle: TextStyle(fontSize: 28.0),  //For Selected tab
                            unselectedLabelStyle: TextStyle(fontSize: 16.0),
                            labelColor: Colors.black,
                            indicatorColor: Colors.transparent,
                            tabs: [
                              Row(
                                children: [
                                  Text('Chats'),
                                  SizedBox(width: 4,),
                                  Visibility(
                                    visible: visibility,
                                    child: Container(
                                      padding: EdgeInsets.all(6),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.indigoAccent,
                                      ),

                                      child: Text(total.toString(),style: TextStyle(fontSize: 14,color: Colors.white),),
                                    ),
                                  )
                                ],
                              ),
                              new Tab(
                                text: 'Calls',
                              )
                            ]
                        ),
                        Expanded(
                          child: Container(
                            child: TabBarView(
                                children: [
                                  ChatFragment(root),
                                  CallFragment()
                                ]
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
    }
      ),
    ));
  }
}

class DataSearch extends SearchDelegate<String>{

  List<User> users;
  bool chat;

  DataSearch(this.users, this.chat);

  @override
  List<Widget> buildActions(BuildContext context) {
    return[IconButton(icon: Icon(Icons.clear),onPressed: (){
      query = "";
    },)];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: (){
        close(context, "");
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return ListView.builder(
        itemCount: users.length,
        itemBuilder: (BuildContext ctxt, int index) {
          return chatCard(context,users.elementAt(index).name,users.elementAt(index).recent,"",0,users.elementAt(index).img,callback,index,root);
        }
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {

    final suggestions = query.isEmpty? users : users.where((p) => p.name.toLowerCase().startsWith(query.toLowerCase())).toList();

    return ListView.builder(
        itemCount: suggestions.length,
        itemBuilder: (BuildContext ctxt, int index) {
          if(chat){
            return chatCard(context,suggestions.elementAt(index).name,suggestions.elementAt(index).recent,query,suggestions.elementAt(index).unread,suggestions.elementAt(index).img,callback,index,root);
          }
          return callCard(context, suggestions.elementAt(index).name, suggestions.elementAt(index).lastCall,query,suggestions.elementAt(index).img,);
        }
    );
  }

  void callback(int i){}

  void root(int i){}

}
