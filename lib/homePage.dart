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
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      drawer: Drawer(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero
        ),
        child: Column(
          children: [
            Container(
              height: 200.0,  
              width: MediaQuery.of(context).size.width,            
              color: Colors.brown,
              child: Column(
                children: [
                  SizedBox(height: 50.0,),
                  CircleAvatar(
                    radius: 40.0,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, size: 50,),
                  ),
                  SizedBox(height: 20),
                  Text("welcome User",style: 
                  TextStyle(
                    color:Colors.white,
                    fontSize: 20,
                    ) ,),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey,),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey,),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("About"),
              trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey,),
            ),
            ListTile(
              leading: Icon(Icons.delete,color: Colors.red,),
              title: Text("Delete"),
              subtitle: Text('If you delete once then you cant recover your account'),
              trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey,),
            )
          ],
        ),
      ),

      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              print('Pressed Elevated Button');
            }, child: Text("Elevate Button"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.brown,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              )
            ),
            ),

            TextButton(onPressed: (){}, child: Text('Texr Button'),style: TextButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              )
            )),
            ElevatedButton.icon(onPressed: (){}, label: Text('Elevated Icon Button'),
              icon: Icon(Icons.home),
            ),
            TextButton.icon(onPressed: (){},
              icon: Icon(Icons.account_box),
             label: Text('Text Icone Button'))
          ],
        ),
      ),
    );
  }

}