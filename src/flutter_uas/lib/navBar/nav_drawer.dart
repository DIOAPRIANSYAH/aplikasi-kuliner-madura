import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          _drawerItem(
              icon: Icons.school_rounded,
              text: 'Politeknik Negeri Malang',
              onTap: () => print('Tap My Files')),
          _drawerItem(
              icon: Icons.library_books_rounded,
              text: 'Manajemen Informatika',
              onTap: () => print('Tap Shared menu')),
          _drawerItem(
              icon: Icons.mobile_friendly_rounded,
              text: 'Pemrograman Mobile',
              onTap: () => print('Tap Recent menu')),
          _drawerItem(
              icon: Icons.task_alt_rounded,
              text: 'UAS',
              onTap: () => print('Tap Trash menu')),
          const Divider(height: 25, thickness: 1),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
            child: Text("Halaman Aplikasi",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                )),
          ),
          _drawerItem(
              icon: Icons.android_rounded,
              text: 'Aplikasi CRUD SQL-Lite',
              onTap: () => print('Tap Family menu')),
          _drawerItem(
              icon: Icons.api_rounded,
              text: 'Aplikasi Food API-Key',
              onTap: () => print('Tap Family menu')),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return const UserAccountsDrawerHeader(
    currentAccountPicture: ClipOval(
      child: Image(image: AssetImage('assets/avatar.png'), fit: BoxFit.cover),
    ),
    // otherAccountsPictures: [
    //   ClipOval(
    //     child: Image(
    //         image: AssetImage('assets/images/orang1.jpg'), fit: BoxFit.cover),
    //   ),
    //   ClipOval(
    //     child: Image(
    //         image: AssetImage('assets/images/orang3.jpeg'), fit: BoxFit.cover),
    //   )
    // ],
    accountName: Text('Dio Apriansyah'),
    accountEmail: Text('2131750005@student.polinema.ac.id'),
  );
}

Widget _drawerItem(
    {required IconData icon,
    required String text,
    required GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}
