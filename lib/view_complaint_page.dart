import 'package:flutter/material.dart';
import 'complaint.dart';

class ViewComplaintPage extends StatefulWidget {
  final Complaint complaint;
  final bool isAdmin;

  const ViewComplaintPage({required this.complaint, required this.isAdmin});

  @override
  _ViewComplaintPageState createState() => _ViewComplaintPageState();
}

class _ViewComplaintPageState extends State<ViewComplaintPage> {
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
        title: Text('Complaint Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
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
            Text(
              'Status: ${_complaint.isResolved ? 'Resolved' : 'Unresolved'}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: _complaint.isResolved ? Colors.green : Colors.red,
              ),
            ),
            if (widget.isAdmin && !_complaint.isResolved) // Only show if admin and complaint is unresolved
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    // Mark complaint as resolved
                    _complaint.isResolved = true;
                  });
                },
                child: Text('Mark as Resolved'),
              ),
          ],
        ),
      ),
    );
  }
}
