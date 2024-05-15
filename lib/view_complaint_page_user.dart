// view_complaint_page_user.dart
import 'package:flutter/material.dart';
import 'complaint.dart'; // Import the Complaint class here

class ViewComplaintPageUser extends StatelessWidget {
  final Complaint complaint;

  const ViewComplaintPageUser({required this.complaint});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Complaint Portal'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              complaint.title,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(complaint.summary),
            SizedBox(height: 16.0),
            Text(
              'Severity: ${complaint.severity}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            if (complaint.isResolved)
              Text(
                'Status: Resolved',
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
