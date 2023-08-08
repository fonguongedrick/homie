import 'package:flutter/material.dart';
import 'profile.dart';
import 'notification.dart';



class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu, color: Colors.blue, size: 30),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
       drawer: Drawer(
         backgroundColor: Colors.blue[300],
              child: ListView(
          children: [
           DrawerHeader(
  decoration: BoxDecoration(
    color: Colors.blue[300],
  ),
  child: Column(
    children: [
      Image.asset('assets/e_life_saver.png', height: 100, width: 100,),
      SizedBox(height: 15,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Menu',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
           GestureDetector(
            onTap: () {
             Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DashboardPage()),
    );
            },
            child: Icon(
              Icons.cancel,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ],
  ),
),
Divider(thickness: 3, color: Colors.white,),
            ListTile(
              leading: Icon(Icons.home, color: Colors.white,),
              title: Text('Home',style: TextStyle(color: Colors.white,)),
              onTap: () {
                // Handle Home onTap
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications, color: Colors.white,),
              title: Text('Notifications', style: TextStyle(color: Colors.white,),),
              onTap: () {
                // Handle Notifications onTap
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle,color: Colors.white,),
              title: Text('Account',style: TextStyle(color: Colors.white,)),
              onTap: () {
                // Handle Account onTap
              },
            ),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.white,),
              title: Text('Logout',style: TextStyle(color: Colors.white,)),
              onTap: () {
                // Handle Logout onTap
              },
            ),
          ],
        ),
            ),
          
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Welcome', // Replace 'Username' with the user's name
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 8),
                    Text(
                      'EdrickDeman', // Replace 'Username' with the user's name
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue[300]),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  'Make a choice...',
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(height: 16),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      SizedBox(width: 8),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter your keyword',
                            border: InputBorder.none,
                          ),
                          onChanged: (value) {
                            // Handle search keyword changes
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10, // Replace with the actual number of hostels
                    itemBuilder: (context, index) {
                      // Replace the Image.network with the actual hostel image
                      return Container(
                        child: Column(
                          children: [
                            Container(
                              height: 130,
                              width: 170,
                              margin: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/hostel.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(''),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Standard Lodge',
                                  style: TextStyle(fontSize: 20,color: Colors.blue[300], fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '\XAF350k',
                                  style: TextStyle( color: Colors.orange, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recommendation',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.orange),
                    ),
                    Text('View All',style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue[300]) )
                  ],
                ),
                SizedBox(height: 8),
                Container(
                  height: 400,
                  child: ListView.builder(
                    itemCount: 10, // Replace with the actual number of hostels
                    itemBuilder: (context, index) {
                      // Replace the Image.network with the actual hostel image
                      return Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 150,
                                  width: double.infinity,
                                  margin: EdgeInsets.only(bottom: 16),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/hostel.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          'Mami Anna',
                                          style: TextStyle(fontWeight: FontWeight.bold),
                                        ),
                                        Text('Mile 10, Bambili'),
                                        SizedBox(height: 4),
                                      ],
                                    ),
                                  
                                
                                SizedBox(height: 8),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.star, color: Colors.yellow),
                                        Icon(Icons.star, color: Colors.yellow),
                                        Icon(Icons.star, color: Colors.yellow),
                                        Icon(Icons.star, color: Colors.yellow),
                                      ],
                                    ),
                                    SizedBox(height: 8),
                                    Text('\XAF400k/year', style: TextStyle(fontWeight: FontWeight.bold),),
                                  ],
                                ),
                              ],
                            ),
              ])),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue[300],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.orange[300],
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardPage()));
          } else if (index == 1) {
            Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationPage()));
          } else if (index == 2) {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
          }
        },
      ),
    );
  }
}
