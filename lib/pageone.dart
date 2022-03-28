import 'package:flutter/material.dart';
import 'package:navigation/pagetwo.dart';
class Page1 extends StatefulWidget
{
  int value;
  Page1(this.value);
  @override
  State<StatefulWidget> createState()=>_Page1State (value);
  
}
class _Page1State extends State<Page1>
{

    incre() {
    setState(() {
     
      value++;
    });
  }
int value;
  _Page1State(this.value);
  

 
  @override
  Widget build(BuildContext context) {
   
     return Scaffold(
      appBar: AppBar(
       
        title: Text("page2"),
      ),
      body: Center(
       
        child: Column(
        
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              "value $value",
             
            ),
           RaisedButton(onPressed: (){
             Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Page2(value)));
           },
           
           child: Text("next page"),)
          
          ],
        ),
      ),


      
      floatingActionButton: FloatingActionButton(
        onPressed: incre(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
     
    );
    throw UnimplementedError();
  }

}

