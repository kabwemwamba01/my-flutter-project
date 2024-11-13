import 'package:appointmentsapp/screens/EditProfileScreen.dart';
import 'package:appointmentsapp/screens/SearchClinicDoctorScreen.dart';
import 'package:flutter/material.dart';

class PatientDashboardScreen extends StatelessWidget {
  const PatientDashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Patient Dashboard'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
              child: Text(
                'Patient Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Edit Profile & Reset Password'),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const EditProfileScreen())),
            ),
            ListTile(
              leading: const Icon(Icons.search),
              title: const Text('Search Clinic & Doctor'),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchClinicDoctorScreen())),
            ),
          ],
        ),
      ),
      body: const Center(child: Text('Patient Dashboard')),
    );
  }
}