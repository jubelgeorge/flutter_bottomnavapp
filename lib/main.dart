import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterbottomnavapp/views/books.dart';
import 'package:flutterbottomnavapp/views/employees.dart';
import 'package:flutterbottomnavapp/views/products.dart';
import 'package:flutterbottomnavapp/views/students.dart';

void main(){
  runApp(MyMenu());
}
class MyMenu extends StatefulWidget {
  @override
  _MyMenuState createState() => _MyMenuState();
}

class _MyMenuState extends State<MyMenu> {
  int _mycurrentIndex= 0;
  final mypages= [Books(),Employees(),Students(),Products()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: mypages[_mycurrentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          currentIndex: _mycurrentIndex,
          iconSize: 20.0,
          selectedFontSize: 15.0,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              title: Text("Book"),
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.perm_identity),
              title: Text("Employee"),
              backgroundColor: Colors.teal
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.directions_run),
              title: Text("Student"),
              backgroundColor: Colors.grey
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              title: Text("Shopping"),
              backgroundColor: Colors.deepOrangeAccent
            )
          ],
          onTap: (index){
            setState(() {
              _mycurrentIndex= index;
            });
          },
        ),
      )

    );
  }
}
