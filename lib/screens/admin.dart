import 'package:appointmentsapp/main.dart';
import 'package:appointmentsapp/screens/ManageSpecialtiesScreen.dart';
import 'package:appointmentsapp/screens/ViewListScreen.dart';
import 'package:appointmentsapp/screens/approve_clinic.dart';
import 'package:flutter/material.dart';

class AdminDashboardScreen extends StatelessWidget {
  const AdminDashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Dashboard'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Admin Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.approval),
              title: const Text('Approve Clinics'),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const ApproveClinicScreen())),
            ),
            ListTile(
              leading: const Icon(Icons.list),
              title: const Text('View Clinics/Doctors/Patients'),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const ViewListScreen())),
            ),
            ListTile(
              leading: const Icon(Icons.medical_services),
              title: const Text('Manage Specialties'),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const ManageSpecialtiesScreen())),
            ),
          ],
        ),
      ),
      body: const Center(child: Text('Admin Dashboard')),
    );
  }
}