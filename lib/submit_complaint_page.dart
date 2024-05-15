import 'package:flutter/material.dart';

class SubmitComplaintPage extends StatefulWidget {
  @override
  _SubmitComplaintPageState createState() => _SubmitComplaintPageState();
}

class _SubmitComplaintPageState extends State<SubmitComplaintPage> {
  final _formKey = GlobalKey<FormState>();
  String _complaintTitle = '';
  String _complaintSummary = '';
  Severity _selectedSeverity = Severity.low;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Complaint Portal'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Complaint Title',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a complaint title';
                  }
                  return null;
                },
                onSaved: (value) {
                  _complaintTitle = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Complaint Summary',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a complaint summary';
                  }
                  return null;
                },
                onSaved: (value) {
                  _complaintSummary = value!;
                },
              ),
              SizedBox(height: 16.0),
              Text('Severity'),
              ListTile(
                title: Text('Low'),
                leading: Radio<Severity>(
                  value: Severity.low,
                  groupValue: _selectedSeverity,
                  onChanged: (Severity? value) {
                    setState(() {
                      _selectedSeverity = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text('Medium'),
                leading: Radio<Severity>(
                  value: Severity.medium,
                  groupValue: _selectedSeverity,
                  onChanged: (Severity? value) {
                    setState(() {
                      _selectedSeverity = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text('High'),
                leading: Radio<Severity>(
                  value: Severity.high,
                  groupValue: _selectedSeverity,
                  onChanged: (Severity? value) {
                    setState(() {
                      _selectedSeverity = value!;
                    });
                  },
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // Submit complaint logic here
                    // Navigate back to user complaints page for now
                    Navigator.pop(context);
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum Severity { low, medium, high }