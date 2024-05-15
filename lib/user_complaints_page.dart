import 'package:flutter/material.dart';
import 'complaint.dart';
import 'view_complaint_page_user.dart'; 

class UserComplaintsPage extends StatefulWidget {
  @override
  _UserComplaintsPageState createState() => _UserComplaintsPageState();
}

class _UserComplaintsPageState extends State<UserComplaintsPage> {
  final List<Complaint> _complaints = [
    Complaint(
      title: 'Complaint Title 1',
      summary: 'Here You have to add Summary ..........', 
      severity: Severity.low,
      isResolved: false,
    ),
    Complaint(
      title: 'Complaint Title 2',
      summary: 'Here You have to add Summary ..........', 
      severity: Severity.high,
      isResolved: true,
    ),
    Complaint(
      title: 'Complaint Title 3',
      summary: 'Here You have to add Summary ..........', 
      severity: Severity.medium,
      isResolved: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Complaint Portal (User)'),
      ),
      body: ListView.builder(
        itemCount: _complaints.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_complaints[index].title),
            subtitle: Text(_complaints[index].summary),
            trailing: _complaints[index].isResolved
                ? Icon(Icons.check_circle, color: Colors.green) // Display green checkmark icon if resolved
                : Icon(Icons.error_outline, color: Colors.red), // Display red error icon if not resolved
            onTap: () {
              // Navigate to the ViewComplaintPageUser with the selected complaint
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ViewComplaintPageUser(complaint: _complaints[index]),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to submit complaint page
          Navigator.pushNamed(context, '/submit-complaint');
        },
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                // Navigate to the Admin Complaints page
                Navigator.pushNamed(context, '/admin-complaints');
              },
            ),
          ],
        ),
      ),
    );
  }
}
