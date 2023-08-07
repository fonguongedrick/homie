import 'package:flutter/material.dart';
class SignUpPage extends StatelessWidget {
  

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
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
             
              children: [
                 Text(
                  'SIGN UP',
                  style: TextStyle(fontSize: 18,
                  color: Colors.blue),
                ),
                SizedBox(height:15),
                Image.asset('assets/Sign up-pana.png', height: 200,),
                Text(
                  'Username',
                  //style: TextStyle(fontSize: 24),
                ),
                SizedBox(height:15),
                Container(
                  height: 50,                 
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  
                      border: Border.all(color: Colors.grey),
                ),
      
                  child:TextField(
                    
                  )
                ),
                SizedBox(height: 15),
                Text(
                  'Email',
                  //style: TextStyle(fontSize: 24),
                ),
                SizedBox(height:15),
                Container(
                  height: 50,
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
                  height: 50,
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  
                      border: Border.all(color: Colors.grey),
                ),
                  child:TextField(
                    
                  )
                ),
                
                SizedBox(height: 15),
                  Container(
                    height: 50,
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue
                  ),
      
                  child:TextButton(onPressed: (){}, child: 
                  Center(child: Text('Sign Up',
                  style: TextStyle(color: Colors.white),)))
                    
                  
                ),
                SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left:70.0),
                child: Row(
                  children: [
                    Text("Already have an account?"),
                    SizedBox(width: 4,),
                     GestureDetector(
                    onTap: ()
                    {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignUpPage()),
                      );},
                    child: Text('Log In',
                    style: TextStyle(color: Colors.blue),),
                  ),
                  ],
                ),
              )
              ],
            ),
          ),
        ),
      ),
    ); 
  }
}