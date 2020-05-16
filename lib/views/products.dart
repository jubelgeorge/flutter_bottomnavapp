import 'package:flutter/material.dart';
class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
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
                hintText: "Enter product name:",
              ),
            ),
            SizedBox(height: 20.0,),
            TextField(
              controller: aucon,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                  hintText: "Enter product id:"
              ),
            ),
            SizedBox(height: 20.0,),
            TextField(
              controller: numcon,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)
                    ,                ),
                  hintText: "Enter product qty:"
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
                      leading: Icon(Icons.shopping_cart),
                      trailing: GestureDetector(
                          onTap: () {
                            setState(() {
                              mynam.removeAt(index);
                              myau.removeAt(index);
                              mynum.removeAt(index);
                            });
                          },
                          child: Icon(Icons.delete)),
                      title: Text("Product name:"+mynam[index]),
                      subtitle: Text("Product id:"+myau[index]+"\n"+"Product qty:"+mynum[index].toString()),

                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
