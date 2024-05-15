import 'package:flutter/material.dart';
import 'complaint.dart';
import 'view_complaint_page_admin.dart'; // Import the ViewComplaintPageAdmin class here

class AdminComplaintsPage extends StatefulWidget {
  @override
  _AdminComplaintsPageState createState() => _AdminComplaintsPageState();
}

class _AdminComplaintsPageState extends State<AdminComplaintsPage> {
  final List<Complaint> _complaints = [
    Complaint(
      title: 'Complaint Title 1',
      summary: 'Here You have to add Summary ..........', 
      severity: Severity.low,
    ),
    Complaint(
      title: 'Complaint Title 2',
      summary: 'Here You have to add Summary ..........', 
      severity: Severity.high,
    ),
    Complaint(
      title: 'Complaint Title 3',
      summary: 'Here You have to add Summary ..........', 
      severity: Severity.medium,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Complaint Portal(Admin)'),
      ),
      body: ListView.builder(
        itemCount: _complaints.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_complaints[index].title),
            subtitle: Text(_complaints[index].summary),
            trailing: Text(_complaints[index].severity.toString()),
            onTap: () {
              // Navigate to the ViewComplaintPageAdmin with the selected complaint
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ViewComplaintPageAdmin(complaint: _complaints[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
