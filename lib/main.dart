import 'package:flutter/material.dart';
import 'login_page.dart';
import 'registration_page.dart';
import 'user_complaints_page.dart';
import 'admin_complaints_page.dart';
import 'submit_complaint_page.dart';
import 'view_complaint_page_user.dart';
import 'view_complaint_page_admin.dart';
import 'complaint.dart';
import 'home_page.dart'; // Import the HomePage class here

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Complaint Portal',
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/registration': (context) => RegistrationPage(),
        '/home': (context) => HomePage(), // Add HomePage to the routes
        '/user-complaints': (context) => UserComplaintsPage(),
        '/admin-complaints': (context) => AdminComplaintsPage(),
        '/submit-complaint': (context) => SubmitComplaintPage(),
        '/view-complaint-user': (context) => ViewComplaintPageUser(
          complaint: ModalRoute.of(context)!.settings.arguments as Complaint,
        ),
        '/view-complaint-admin': (context) => ViewComplaintPageAdmin(
          complaint: ModalRoute.of(context)!.settings.arguments as Complaint,
        ),
      },
    );
  }
}
