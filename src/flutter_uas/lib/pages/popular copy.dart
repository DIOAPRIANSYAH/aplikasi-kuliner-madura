// import 'package:flutter/material.dart';
// import 'package:flutter_uas/dbHelper/sql_helper.dart';
// import 'package:flutter_uas/navBar/nav_drawer.dart';
// import 'package:flutter_uas/pages/detail_food.dart';

// class PopularScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<PopularScreen> {
//   int count = 0;
//   List<Map<String, dynamic>> _makananList = [];

//   @override
//   void initState() {
//     super.initState();
//     _loadData();
//   }

//   Future<void> _loadData() async {
//     List<Map<String, dynamic>> makananList =
//         await DBHelper.instance.getAllMakanan();
//     setState(() {
//       _makananList = makananList;
//     });
//   }

//   Future<void> _deleteData(int id) async {
//     await DBHelper.instance.deleteMakanan(id);
//     await _loadData();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         iconTheme: const IconThemeData(
//           color: Colors.black, // <-- SEE HERE
//         ),
//         title: const Text(
//           "Makanan Populer",
//           textAlign: TextAlign.center,
//           style: TextStyle(color: Colors.black),
//         ),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//       ),
//       drawer: DrawerWidget(),
//       body: Column(
//         children: [
//           // Tampilkan kotak kosong jika _makananList kosong
//           Expanded(
//             child: ListView.builder(
//               itemCount: _makananList.length,
//               itemBuilder: (context, index) {
//                 return Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => DetailMakananScreen(
//                             makanan: _makananList[index],
//                           ),
//                         ),
//                       );
//                     },
//                     child: Card(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           // Gambar dummy
//                           Container(
//                             width: double.infinity,
//                             height: 200,
//                             color: Colors
//                                 .grey, // Ganti dengan gambar sesuai kebutuhan
//                           ),
//                           SizedBox(height: 8.0),
//                           // Nama makanan
//                           Row(
//                             children: [
//                               Padding(
//                                 padding: EdgeInsets.all(4.0),
//                                 child: Icon(Icons.restaurant_menu),
//                               ),
//                               SizedBox(width: 4.0),
//                               Text(
//                                 _makananList[index]['nama_makanan'],
//                                 style: TextStyle(fontWeight: FontWeight.bold),
//                               ),
//                             ],
//                           ),
//                           SizedBox(height: 4.0),
//                           // Kategori makanan
//                           Row(
//                             children: [
//                               Padding(
//                                 padding: EdgeInsets.all(4.0),
//                                 child: Icon(Icons.category),
//                               ),
//                               SizedBox(width: 4.0),
//                               Text(_makananList[index]['kategori']),
//                             ],
//                           ),
//                           SizedBox(height: 4.0),
//                           // Asal makanan
//                           Row(
//                             children: [
//                               Padding(
//                                 padding: EdgeInsets.all(4.0),
//                                 child: Icon(Icons.location_on),
//                               ),
//                               SizedBox(width: 4.0),
//                               Text(_makananList[index]['asal_makanan']),
//                             ],
//                           ),
//                           SizedBox(height: 8.0),
//                           // Tombol hapus
//                         ],
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
