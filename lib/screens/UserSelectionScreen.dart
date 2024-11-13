import 'package:appointmentsapp/screens/AdminLoginScreen.dart';
import 'package:appointmentsapp/screens/Clinic%20Login%20Screen.dart';
import 'package:appointmentsapp/screens/Doctor%20login%20screen.dart';
import 'package:appointmentsapp/screens/Patient%20Login%20Screen.dart';
import 'package:appointmentsapp/screens/admin%20login%20screen.dart';
import 'package:flutter/material.dart';

class UserSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // 4 Tabs for Admin, Doctor, Clinic, and Patient
      child: Scaffold(
        appBar: AppBar(
          title: const Text('User Login'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Admin'),
              Tab(text: 'Doctor'),
              Tab(text: 'Clinic'),
              Tab(text: 'Patient'),
            ],
          ),
        ),
        // Removed 'const' from TabBarView because the children might not be constant constructors.
        body: TabBarView(
          children: [
            AdminLoginScreen(),
            DoctorLoginScreen(),
            ClinicLoginScreen(),
            PatientLoginScreen(),
          ],
        ),
      ),
    );
  }
}
