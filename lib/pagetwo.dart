import 'package:flutter/material.dart';

class Page2 extends StatefulWidget
{
  int value;
  Page2(this.value);
  @override
  State<StatefulWidget> createState()=>_Page1State (value);
  
}
class _Page1State extends State<Page2>
{
int value;
  _Page1State(this.value);
  
 
  @override
  Widget build(BuildContext context) {
   
     return Scaffold(
      appBar: AppBar(
       
        title: Text("page3"),
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
           
          
          ],
        ),
      ),
     
    );
    throw UnimplementedError();
  }

}

