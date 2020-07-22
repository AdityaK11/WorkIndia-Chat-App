import 'package:chatapp/helper/calls_list.dart';
import 'package:chatapp/models/user_model.dart';
import 'package:chatapp/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CallFragment extends StatefulWidget {
  @override
  _CallFragmentState createState() => _CallFragmentState();
}

class _CallFragmentState extends State<CallFragment> with AutomaticKeepAliveClientMixin<CallFragment>{
  int page = 1;
  List<User> items = new List<User>();
  List<User> current = new List<User>();
  bool isLoading = false;

  Future _loadData() async {
    // perform fetching data delay
    await new Future.delayed(new Duration(seconds: 2));

    print("load more");
    // update data and loading status
    setState(() {if(current.length<items.length){
      current.addAll( items.sublist(page*10,page*10+10));
      page += 1;
      print('items: '+ current.toString());
    }

    isLoading = false;
    });
  }


  @override
  void initState() {
    items = new CallList().getUsers();
    current.addAll(items.sublist(0,10));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16,),
        Expanded(
          child: NotificationListener<ScrollNotification>(
            onNotification: (ScrollNotification scrollInfo) {
              if (!isLoading && scrollInfo.metrics.pixels ==
                  scrollInfo.metrics.maxScrollExtent) {
                _loadData();
                // start loading data
                setState(() {
                  if(current.length<items.length){
                    isLoading = true;
                  }

                });
              }
              return true;
            },
            child: ListView.builder(
              itemCount: current.length,
              itemBuilder: (context, index) {
                return callCard(context,current.elementAt(index).name,current.elementAt(index).lastCall,"",current.elementAt(index).img);
              },
            ),
          ),
        ),
        Container(
          height: isLoading ? 50.0 : 0,
          color: Colors.transparent,
          child: Center(
            child: new CircularProgressIndicator(),
          ),
        ),
        /*Expanded(
          child: ListView.builder(
              itemCount: 8,
              itemBuilder: (BuildContext ctxt, int index) {
                return chatCard(context);
              }
          ),
        )*/
      ],
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

