import 'package:day14/Animation/FadeAnimation.dart';
import 'package:flutter/material.dart';


void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )

);

class HomePage extends StatelessWidget {
  TextEditingController textFieldController = TextEditingController();
  @override

  Widget build(BuildContext context) {


    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  Colors.orange[900],
                  Colors.orange[800],
                  Colors.orange[400]
                ]
            )
        ),



        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 50,),
            FlatButton(
              textColor: Colors.white,
              onPressed: () {},
              child: Icon(Icons.menu),
              shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
            ),

            Padding(
              padding: EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FadeAnimation(1, Text("CCBJ", style: TextStyle(color: Colors.white, fontSize: 40),)),
                    SizedBox(height: 10,),
                    FadeAnimation(1.3, Text("Trace Screen", style: TextStyle(color: Colors.white, fontSize: 18),)),
                  ],
                ),
              ),),
            SizedBox(height: 20,),
            Expanded(
              child:SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 60,),
                        FadeAnimation(1.4, Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [BoxShadow(
                                  color: Color.fromRGBO(225, 95, 27, .3),
                                  blurRadius: 20,
                                  offset: Offset(0, 10)
                              )]
                          ),

                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                ),
                                child: TextField(
                                  controller: textFieldController,
                                  decoration: InputDecoration(
                                      hintText: "Product Number",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Factory Name",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Branch Number",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                  ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Line Number",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),


                        SizedBox(height: 50,),
                        FadeAnimation(1.7, Text("Developed By FirstQA ®", style: TextStyle(color: Colors.grey),)),
                        SizedBox(height: 30,),

                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),

      ),
      floatingActionButton: FloatingActionButton.extended(

        onPressed: () {
          String textToSend = textFieldController.text;
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondRoute(text: textToSend,)),
          );
        },
        label: Text('Search'),
        icon: Icon(Icons.search),
        backgroundColor: Colors.orange[900],
      ),

    );
  }
}
class SecondRoute extends StatelessWidget {
   final String text;
  SecondRoute({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Results"),
        backgroundColor: Colors.orange[900],
        actions: <Widget>[


      FlatButton(
            textColor: Colors.white,
            onPressed: () {},
            child: Icon(Icons.refresh),
            shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
          ),

        ],
      ),

      body: Container(
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[

              ListTile(

                leading: Icon(Icons.arrow_forward_ios),
                title: new Text(text),
                subtitle: Text('The Enchanted Nightingale'),
              ),
              ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: const Text('View'),
                    onPressed: () { /* ... */ },
                  ),
                ],
              ),
            ],
          ),
        ),

      ),


      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pop(context);
        },
        label: Text('Back'),
        icon: Icon(Icons.arrow_back),
        backgroundColor: Colors.orange[900],
      ),
    );
  }
}