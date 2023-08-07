import 'dart:convert';
import 'package:flutter/material.dart';
import 'login.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';



 void main() { runApp(
    MyApp(),
  );
 }

class MyApp extends StatefulWidget {
  
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
   

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blue[200]
      ),
      home: FirstScreen(),
    );
  }
}
class FirstScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: TextButton(onPressed: (){
                
                  }, child: Text('Skip',
                  style: TextStyle(color: Colors.white),)),
                ),
              Text(
                'Find your perfect place to stay ',
                style: TextStyle(fontSize: 24,),
              ),
              SizedBox(height: 100),
              Align(
                alignment: Alignment.centerRight,
                child: CircleAvatar(child: IconButton(onPressed: (){
              Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyFirstScreen()),
          );
                }, icon: Icon(Icons.arrow_forward, color: Colors.white,)),),
              ),
              Image.asset('assets/House searching-cuate.png'),
              
              SizedBox(height: 80),
            ],
          ),
        ),
      ),
      
    );
  }
}

class MyFirstScreen extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(onPressed: (){
                
                  }, child: Text('Skip',
                  style: TextStyle(color: Colors.white),)),
                ),
                  SizedBox(height: 80),
                Text(
                    'Find Verified stay. ',
                    style: TextStyle(fontSize: 24,
                    color:Colors.white),
                  ),
                  SizedBox(height: 120),
                  Align(
                    alignment: Alignment.centerRight,
                    child: CircleAvatar(
                      backgroundColor:Colors.white,
                      child: IconButton(onPressed: (){
                  Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MySecondScreen()),
              );
                    }, icon: Icon(Icons.arrow_forward, color: Colors.orange,)),),
                  ),
                Image.asset('assets/House searching-pana.png'),
                
              ],
            ),
          ),
        ),
      ),
      
    );
  }
}

class MySecondScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                SizedBox(height: 40,),
                Text(
                    'Save Money With Us',
                    style: TextStyle(fontSize: 60,
                    color: Colors.white),
                  ),
                  SizedBox(height: 120,),
                  Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.white,
                      borderRadius: BorderRadius.circular(4)
                    ),
                    padding: EdgeInsets.all(0.2),
                    child: TextButton(onPressed: (){
                    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );  
                    }, child: Text('Get Started',
                    style: TextStyle(color: Colors.orange),)),
                  ),
                ),
                Image.asset('assets/House searching-amico.png'),
                
              ],
            ),
          ),
        ),
      ),
      
    );
  }
}