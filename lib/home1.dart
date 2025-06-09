import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key, required bool debugShowCheckedModeBanner});
  @override
  State <HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  //int number = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Home Page',style: TextStyle(color: Colors.white,fontSize: 25),),
        centerTitle: false,
        actions: [
          Icon(Icons.search,color:Colors.white),
          Icon(Icons.notifications,color:Colors.white),
          SizedBox(width: 10)
        ],
      ),
      // body: Container(
      //   height: size.height*0.5,
      //   width: size.width*0.5,   
      //   decoration: BoxDecoration(
      //     color: Colors.green,
      //     borderRadius: BorderRadius.only(
      //       topRight: Radius.circular(50.0),
      //       bottomLeft: Radius.circular(50.0),
      //     )
      //   ),
      //   child: Center(child: Text('Container',style: TextStyle(color: Colors.white),)),
      // ),
      body: Container(
        width: size.width,
        height: size.height,
        child:Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex:1,
              child: Container(
                height: 100.0,
                //width: 100.0,
                color: Colors.red,
              ),
            ),
            Expanded(
              flex:3,
              child: Container(
                height: 100.0,
                //width: 100.0,
                color: Colors.orange,
              ),
            ),
            Expanded( 
              flex:1,
              child: Container(
              color: Colors.green,
              height: 100.0,
            ))
        
          ],
        ),
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     Container(
        //       width: size.width * 0.5,
        //       height: 100.0,
        //       color: Colors.amber,
        //     ),
        //     SizedBox(height: 10,),
        //     Container(
        //       width: size.width * 0.5,
        //       height: 100.0,
        //       color: Colors.orange,
        //     ),
        //     SizedBox(height: 10,),
        //     Container(
        //       width: size.width * 0.5,
        //       height: 100.0,
        //       color: Colors.purple,
        //     ),
        //     SizedBox(height: 10,),
        //     Container(
        //      width: size.width * 0.5,
        //       height: 100.0,
        //       color: Colors.blue,
        //     )
        //   ],
        // ),
      ),

    );
  }
}