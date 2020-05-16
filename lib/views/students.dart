import 'package:flutter/material.dart';
class Students extends StatefulWidget {
  @override
  _StudentsState createState() => _StudentsState();
}

class _StudentsState extends State<Students> {
  TextEditingController namcon= TextEditingController();
  TextEditingController aucon= TextEditingController();
  TextEditingController numcon= TextEditingController();
  var mynam= [];
  var myau= [];
  var mynum= [];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 100.0,),
            TextField(
              controller: namcon,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)
                ),
                hintText: "Enter student name:",
              ),
            ),
            SizedBox(height: 20.0,),
            TextField(
              controller: aucon,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                  hintText: "Enter student age:"
              ),
            ),
            SizedBox(height: 20.0,),
            TextField(
              controller: numcon,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)
                    ,                ),
                  hintText: "Enter student roll no:"
              ),
            ),
            SizedBox(height: 20.0,),
            RaisedButton(
              child: Text("ADD"),
              onPressed: (){
                var name= namcon.text;
                var author= aucon.text;
                var number= numcon.text;
                setState(() {
                  mynam.add(name);
                  myau.add(author);
                  mynum.add(number);
                });
              },
              color: Colors.pink,
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: mynam.length==null?0:mynam.length,
                itemBuilder: (context,index){
                  return Card(
                    elevation: 20.0,
                    child: ListTile(
                      leading: Icon(Icons.directions_run),
                      trailing: GestureDetector(
                          onTap: () {
                            setState(() {
                              mynam.removeAt(index);
                              myau.removeAt(index);
                              mynum.removeAt(index);
                            });
                          },
                          child: Icon(Icons.delete)),
                      title: Text("Student name:"+mynam[index]),
                      subtitle: Text("Student age:"+myau[index]+"\n"+"Student roll no:"+mynum[index].toString()),

                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
