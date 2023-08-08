import 'package:flutter/material.dart';


class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Profile', style: TextStyle(color: Colors.black),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black, width: 4),
                  image: DecorationImage(
                    image: AssetImage('assets/user_profile.jpg'), // Replace with the user's image
                    fit: BoxFit.cover,
                  ),
                ),
                child: IconButton(
                  icon: Icon(Icons.camera_alt),
                  onPressed: () {
                    // Handle changing the profile picture
                  },
                ),
              ),
              SizedBox(height: 16),
              Text(
                'John Doe', // Replace with the user's name
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 36),
              _buildProfileSetting('Change Password', Icons.lock),
              SizedBox(height: 20),
              _buildProfileSetting('Night Mode', Icons.nightlight_round),
              SizedBox(height: 20),
              _buildProfileSetting('Logout', Icons.logout),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileSetting(String label, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Icon(iconData),
          ),
          TextButton(
            onPressed: () {
              // Handle the profile setting actions
            },
            child: Text(label),
          ),
        ],
      ),
    );
  }
}
