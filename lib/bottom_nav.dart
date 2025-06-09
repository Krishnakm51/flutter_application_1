import 'package:flutter/material.dart';
import 'package:flutter_application_1/aboutPage.dart';
import 'package:flutter_application_1/homePage.dart';
import 'package:flutter_application_1/settingsPage.dart';

class BottomNavBar extends StatefulWidget{
  const BottomNavBar({super.key});
  @override
  State <BottomNavBar> createState() => _BottomNavBarState();
    
  }

class _BottomNavBarState extends State<BottomNavBar> {
  List <Widget> pages = [HomePage(debugShowCheckedModeBanner: true,),AboutPage(),SettingsPage()];
  int _SelectedPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_SelectedPage],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.info_outline),
          label: "About",
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: "Settings",
          )
      ],
      selectedItemColor: Colors.brown,
      unselectedItemColor: Colors.grey,
      currentIndex: _SelectedPage,
      onTap: (index){
         setState((){
          _SelectedPage = index;
         });
      }
      
      ),

    );

      }
    
    }
  
