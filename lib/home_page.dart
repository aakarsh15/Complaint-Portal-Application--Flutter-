import 'package:flutter/material.dart';
import 'user_complaints_page.dart'; // Import the user complaint page
import 'admin_complaints_page.dart'; // Import the admin complaint page

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to the user complaint page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UserComplaintsPage()),
                );
              },
              child: Text('User Complaints'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to the admin complaint page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AdminComplaintsPage()),
                );
              },
              child: Text('Admin Complaints'),
            ),
          ],
        ),
      ),
    );
  }
}
