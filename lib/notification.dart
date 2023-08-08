import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Notification', style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: 5, // Replace with the actual number of notifications
            itemBuilder: (context, index) {
              // Replace with actual user profile image URL and name
              String userProfileImageUrl = 'https://placeimg.com/100/100/people';
              String userName = 'John Doe';
              String time = '2h ago'; // Replace with actual notification time
      
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(userProfileImageUrl),
                  radius: 30,
                ),
                title: Text(userName),
                subtitle: Text(time),
                onTap: () {
                  // Handle notification tap
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
