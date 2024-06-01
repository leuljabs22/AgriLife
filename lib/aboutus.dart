import 'package:flutter/material.dart';


class AboutusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffffd460),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                  radius: 70, backgroundImage: AssetImage('')),
              Text(
                "    Leul Melaku, Mikiyas Solomon, Michael Solomon, Meklit Abraham, Messay Mohammed "
                "  Agrilife is an agriculture app that connect customers and farmers easily "
                "  We believe that technology can be a powerful tool for farmers, and " 
               "   we are dedicated to developing solutions that make a real difference." 
                "  Our mission is to create innovative mobile solutions that empower " 
                "  farmers to make informed decisions, increase efficiency, and maximize their yields ",
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    color: Color(0xfff07b3f),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                " Agrilife 2.0 ",
                style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    letterSpacing: 2.5,
                    color: Color(0xfff07b3f),
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                    ),
              ),
              SizedBox(
               height: 20,
                width: 150,
                child: Divider(
                  color: Color(0xfff07b3f),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10,horizontal: 25),
                child: ListTile(
                  leading: Icon(
                  Icons.phone,
                    color: Color(0xfff07b3f),
                  ),
                  title: Text(
                    'Agrilife@gmail.com',
                    style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        color: Color(0xfff07b3f),
                        fontSize: 20,
                    ),
                  ),
                ),

              ),
              Card(
               
                margin: EdgeInsets.symmetric(vertical: 2,horizontal: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Color(0xfff07b3f),
                  ),
                  
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
