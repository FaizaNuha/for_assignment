import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homescreen(),
    );
  }
}

  class Homescreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
  }

  class HomeState extends State<Homescreen>{


  List<Item> items = [
    Item ("Item 1 ",0),
    Item ("Item 2 ",0),
    Item ("Item 3 ",0),
    Item ("Item 4 ",0),
    Item ("Item 5 ",0),

  ];

  int selCount = 0;


  @override
  Widget build(BuildContext context) {
     return  Scaffold(
       appBar: AppBar(
         title: Text(" Selection Screen "),

       ),
       body:ListView.builder(
          itemCount:  items.length,

           itemBuilder: (context, index){
            return ListTile(
              title: Text(items[index].name),
              tileColor: items[index].Selected == 1 ? Colors.blue : null,
              onTap: () {
                setState(() {
                  items[index].Selected = items[index].Selected == 0 ? 1 : 0;
                  if (items[index].Selected == 1) {
                    selCount++;
                  } else {
                    selCount--;
                  }
                });
              }
            );
           }
           ),
         floatingActionButton: FloatingActionButton(
           onPressed: () {
             showDialog(
               context: context,
               builder: (context) {
                 return AlertDialog(
                   title: Text("Selected Items"),
                   content: Text("Number of selected items : $selCount"),
                   actions: <Widget>[
                     TextButton(
                       child: Text("Close"),
                       onPressed: () {
                         Navigator.of(context).pop();
                       },
                     ),
                   ],
                 );
               },
             );
           },
           child: Icon(Icons.check),
         ),


     );
  }


  }


  class Item {
  String name;
  int Selected;

  Item(this.name, this.Selected);

  }