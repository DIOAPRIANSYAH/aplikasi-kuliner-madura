// import 'package:flutter/material.dart';

// class ProfileScreen extends StatelessWidget {
//   const ProfileScreen({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//         child: Text(
//       "Under Maintenance",
//       style: const TextStyle(
//           fontWeight: FontWeight.bold, fontSize: 20, color: Colors.blue),
//     ));
//   }
//   // @override
//   // Widget build(BuildContext context) {
//   //   return Scaffold(
//   //     body: ListView(
//   //       children: [
//   //         Container(
//   //           color: Colors.blue,
//   //           height: 200,
//   //           child: Center(
//   //             child: CachedNetworkImage(
//   //               imageUrl: 'https://via.placeholder.com/150',
//   //               imageBuilder: (context, imageProvider) => CircleAvatar(
//   //                 radius: 60,
//   //                 backgroundImage: imageProvider,
//   //               ),
//   //               placeholder: (context, url) =>
//   //                   const CircularProgressIndicator(),
//   //               errorWidget: (context, url, error) => const Icon(Icons.error),
//   //             ),
//   //           ),
//   //         ),
//   //         Padding(
//   //           padding: const EdgeInsets.all(16.0),
//   //           child: Column(
//   //             crossAxisAlignment: CrossAxisAlignment.start,
//   //             children: [
//   //               const Text(
//   //                 'Nama Pengguna',
//   //                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//   //               ),
//   //               const SizedBox(height: 8),
//   //               const Text(
//   //                 'email@example.com',
//   //                 style: TextStyle(fontSize: 16, color: Colors.grey),
//   //               ),
//   //               const SizedBox(height: 16),
//   //               const Divider(),
//   //               const SizedBox(height: 16),
//   //               const Text(
//   //                 'Informasi Akun',
//   //                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//   //               ),
//   //               const SizedBox(height: 8),
//   //               const ProfileInfoTile(
//   //                 leadingIcon: Icons.person,
//   //                 title: 'Nama Lengkap',
//   //                 subtitle: 'John Doe',
//   //               ),
//   //               const ProfileInfoTile(
//   //                 leadingIcon: Icons.email,
//   //                 title: 'Email',
//   //                 subtitle: 'email@example.com',
//   //               ),
//   //               const ProfileInfoTile(
//   //                 leadingIcon: Icons.phone,
//   //                 title: 'Nomor Telepon',
//   //                 subtitle: '+1234567890',
//   //               ),
//   //               const SizedBox(height: 16),
//   //               const Divider(),
//   //               const SizedBox(height: 16),
//   //               const Text(
//   //                 'Pengaturan',
//   //                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//   //               ),
//   //               const SizedBox(height: 8),
//   //               ProfileSettingTile(
//   //                 leadingIcon: Icons.lock,
//   //                 title: 'Ubah Kata Sandi',
//   //                 onPressed: () {
//   //                   // Aksi yang dijalankan saat item diubah kata sandi diklik
//   //                 },
//   //               ),
//   //               ProfileSettingTile(
//   //                 leadingIcon: Icons.logout,
//   //                 title: 'Keluar',
//   //                 onPressed: () {
//   //                   // Aksi yang dijalankan saat item keluar diklik
//   //                 },
//   //               ),
//   //             ],
//   //           ),
//   //         ),
//   //       ],
//   //     ),
//   //   );
//   // }
// }

// // class ProfileInfoTile extends StatelessWidget {
// //   final IconData leadingIcon;
// //   final String title;
// //   final String subtitle;

// //   const ProfileInfoTile({
// //     super.key,
// //     required this.leadingIcon,
// //     required this.title,
// //     required this.subtitle,
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     return ListTile(
// //       leading: Icon(leadingIcon),
// //       title: Text(title),
// //       subtitle: Text(subtitle),
// //     );
// //   }
// // }

// // class ProfileSettingTile extends StatelessWidget {
// //   final IconData leadingIcon;
// //   final String title;
// //   final VoidCallback onPressed;

// //   const ProfileSettingTile({
// //     super.key,
// //     required this.leadingIcon,
// //     required this.title,
// //     required this.onPressed,
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     return ListTile(
// //       leading: Icon(leadingIcon),
// //       title: Text(title),
// //       onTap: onPressed,
// //     );
// //   }
// // }
