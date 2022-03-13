import 'package:flutter/material.dart';
import 'package:run/login.dart';
import 'package:run/register.dart';




class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);



  
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(

          title: Center(child: Text("Heloo"),),
          bottom: TabBar(
            unselectedLabelColor: Colors.black,
            labelColor: Colors.pink,
            indicatorColor: Colors.amber,
            
            tabs: [
            Tab(child: Text("Login"),),
            Tab(child: Text("Register"),),

          ]),
          ),


          body: TabBarView(children: [
            Login(),
            Register()
          ]),
          ));
  }
}