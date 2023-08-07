import 'package:flutter/material.dart';
import 'sign_up.dart';
class ResetPassword extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('RESET PASSWORD',
        style: TextStyle(color: Colors.blue[200],fontSize: 30,),),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
           
            children: [
              
              SizedBox(height:35),
              Image.asset('assets/Mobile login-cuate.png', height: 200,),
              SizedBox(height: 15),
              Center(child: Text('Enter your email to reset password')),
              SizedBox(height: 15),
              Text('Email'),
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
             
              SizedBox(height: 105),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 50,
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue
                  ),
                      
                  child:TextButton(onPressed: (){
                    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ResetPasswordPage()),
                      );
                  }, child: 
                  Center(child: Text('Next',
                  style: TextStyle(color: Colors.white),)))
                    
                  
                              ),
                ),
              
            ],
          ),
        ),
      ),
    ); 
  }
}




class ResetPasswordPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('RESET PASSWORD',
        style: TextStyle(color: Colors.blue[200],fontSize: 30,)),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
           
            children: [
               
              SizedBox(height:15),
              Image.asset('assets/Mobile login-cuate.png', height: 200,),
              SizedBox(height: 15),
              Center(child: Text('Enter your email to reset password')),
              SizedBox(height: 15),
              Text('New Password'),
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
               Text('Confirm Password'),
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
             
              SizedBox(height: 70),
                Container(
                  height: 50,
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue
                ),
                    
                child:TextButton(onPressed: (){}, child: 
                Center(child: Text('Reset Password',
                style: TextStyle(color: Colors.white),)))
                  
                
                            ),
              
            ],
          ),
        ),
      ),
    ); 
  }
}