import 'package:appointmentsapp/screens/AddDiagnosisScreen.dart';
import 'package:appointmentsapp/screens/EditProfileScreen.dart';
import 'package:appointmentsapp/screens/ManageScheduleScreen.dart';
import 'package:flutter/material.dart';

class DoctorDashboardScreen extends StatelessWidget {
  const DoctorDashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Doctor Dashboard'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text(
                'Doctor Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.schedule),
              title: const Text('Manage Schedule'),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const ManageScheduleScreen())),
            ),
            ListTile(
              leading: const Icon(Icons.note_add),
              title: const Text('Add Symptoms/Diagnosis'),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const AddDiagnosisScreen())),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Edit Profile & Reset Password'),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const EditProfileScreen())),
            ),
          ],
        ),
      ),
      body: const Center(child: Text('Doctor Dashboard')),
    );
  }
}