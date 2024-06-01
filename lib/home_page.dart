

import 'package:ag/aboutus.dart';
import 'package:ag/cart_page.dart';
import 'package:ag/explore_page.dart';
import 'package:ag/profile_page.dart';
import 'package:ag/services_page.dart';
//import 'package:ag/services_page.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'theme.dart';
import 'package:provider/provider.dart';
import 'theme_provider.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pages = [
    const ExplorePage(),
    // const ServicesPage(),
    const CartPage(),
    const ProfilePage()
  ];
  int currentPageIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(

child: Container(
  color: Colors.deepPurple[100],
  child: ListView(
    children: [
      DrawerHeader(
      child: Text('A G R I L I F E',
    style: TextStyle(fontSize: 35),)
  ),
     ListTile(
      leading: Icon(Icons.home),
      title: Text('Home',
      style: TextStyle(fontSize: 20),
      ),
      
      onTap:(){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => HomePage())
        );
      } ,

   
     ),
     ListTile(
      leading: Icon(IconlyBold.call),
      title: Text('Contact Us',
      style: TextStyle(fontSize: 20),
      ),
      
      onTap:(){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => ServicesPage())
        );
      } ,

   
     ),



     ListTile(
      leading:  Icon(Icons.info),
      title: Text('About Us',
      style: TextStyle(fontSize: 20),
      ),
      
      onTap:(){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => AboutusPage())
        );
      } ,

   
     ),

ListTile(
      leading: Icon(Icons.brightness_2),
      title: Text('Dark Mode ',
      style: TextStyle(fontSize: 20),
      ),
      
      onTap:(){
        Provider.of<ThemeProvider>(context, listen:false).toggleTheme();
      } ,

   
     )


    ],
    
   
    
    
    ),
  
  
  
  ),


      ),
      appBar: AppBar(
        
        centerTitle: false,
        leading: IconButton.filledTonal(
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
          icon: const Icon(Icons.menu),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi ,Everyone 👋🏾",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text("Enjoy our services",
                style: Theme.of(context).textTheme.bodySmall)
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton.filledTonal(
              onPressed: () {},
              icon: badges.Badge(
                badgeContent: const Text(
                  '3',
                  style: TextStyle(
                    color: Color.fromARGB(255, 170, 209, 219),
                    fontSize: 12,
                  ),
                ),
                position: badges.BadgePosition.topEnd(top: -15, end: -12),
                badgeStyle: const badges.BadgeStyle(
                  badgeColor: Color.fromARGB(255, 96, 137, 150),
                ),
                child: const Icon(IconlyBroken.notification),
              ),
            ),
          ),
        ],
      ),
      body: pages[currentPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentPageIndex,
        onTap: (index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(IconlyLight.home),
            label: "Home",
            activeIcon: Icon(IconlyBold.home),
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(IconlyLight.call),
          //   label: "Services",
          //   activeIcon: Icon(IconlyBold.call),
          // ),
          BottomNavigationBarItem(
            icon: Icon(IconlyLight.buy),
            label: "Cart",
            activeIcon: Icon(IconlyBold.buy),
          ),
          BottomNavigationBarItem(
            icon: Icon(IconlyLight.profile),
            label: "Profile",
            activeIcon: Icon(IconlyBold.profile),
          ),
        ],
      ),
    );

 }
}