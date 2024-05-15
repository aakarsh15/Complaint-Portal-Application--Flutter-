// view_complaint_page_admin.dart
import 'package:flutter/material.dart';
import 'complaint.dart'; // Import the Complaint class here

class ViewComplaintPageAdmin extends StatefulWidget {
  final Complaint complaint;

  const ViewComplaintPageAdmin({required this.complaint});

  @override
  _ViewComplaintPageAdminState createState() => _ViewComplaintPageAdminState();
}

class _ViewComplaintPageAdminState extends State<ViewComplaintPageAdmin> {
  late Complaint _complaint;

  @override
  void initState() {
    super.initState();
    _complaint = widget.complaint;
  }

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
              _complaint.title,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(_complaint.summary),
            SizedBox(height: 16.0),
            Text(
              'Severity: ${_complaint.severity}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            if (_complaint.isResolved)
              Text(
                'Status: Resolved',
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            if (!_complaint.isResolved)
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _complaint.isResolved = true;
                  });
                },
                child: Text('Resolve'),
              ),
          ],
        ),
      ),
    );
  }
}
