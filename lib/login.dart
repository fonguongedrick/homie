import 'package:flutter/material.dart';
import 'sign_up.dart';
import 'reset_password.dart';
import 'dashboard.dart';
class LoginPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
           
            children: [
               Text(
                'WELCOME TO HOMIE',
                style: TextStyle(fontSize: 30,
                color: Colors.blue),
              ),
              SizedBox(height:15),
              Image.asset('assets/Mobile login-cuate.png', height: 200,),
              Text(
                'Email',
                //style: TextStyle(fontSize: 24),
              ),
              SizedBox(height:15),
              Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey),
                ),
      
                child:TextField(
                  
                )
              ),
              SizedBox(height: 15),
              Text('Password'),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  
                      border: Border.all(color: Colors.grey),
                ),
      
                child:TextField(
                  
                )
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: (){
                    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ResetPassword()),
                      );
                  },
                  child: Text('Forgot Password?'))),
              SizedBox(height: 35),
                Container(
                  height: 50,
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue
                ),
      
                child:TextButton(onPressed: (){
                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DashboardPage()),
                      );
                }, child: 
                Center(child: Text('Login',
                style: TextStyle(color: const Color(0xFFFFFFFF)),)))
                  
                
              ),
              SizedBox(height: 35),
            Padding(
              padding: const EdgeInsets.only(left:70.0),
              child: Row(
                children: [
                  Text("Don't have an account?"),
                  SizedBox(width: 4,),
                  GestureDetector(
                    onTap: ()
                    {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignUpPage()),
                      );},
                    child: Text('Sign Up',
                    style: TextStyle(color: Colors.blue),),
                  ),
                ],
              ),
            )
            ],
          ),
        ),
      ),
    ); 
  }
}