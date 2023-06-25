// import 'package:flutter/material.dart';
// import 'package:image_card/image_card.dart';

// import '../widgets/card.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const SizedBox(
//               height: 20,
//             ),
//             const Padding(
//               padding: EdgeInsets.all(16.0),
//               child: Text(
//                 'Makanan Populer',
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//             ),
//             SizedBox(
//               height: 200,
//               child: ListView.builder(
//                 padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
//                 scrollDirection: Axis.horizontal,
//                 itemCount: 10,
//                 itemBuilder: (BuildContext context, int index) {
//                   const Padding(padding: EdgeInsets.fromLTRB(15, 0, 15, 0));
//                   return TransparentImageCard(
//                     width: 200,
//                     imageProvider: const AssetImage('assets/background.png'),
//                     tags: [
//                       _tag('Product', () {}),
//                     ],
//                     title: _title(color: Colors.white),
//                     description: _content(color: Colors.white),
//                   );
//                 },
//               ),
//             ),
//             const Padding(
//               padding: EdgeInsets.all(16.0),
//               child: Text(
//                 'Kategori Makanan',
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//             ),
//             SizedBox(
//               height: 100,
//               child: ListView(
//                 scrollDirection: Axis.horizontal,
//                 children: const [
//                   SizedBox(width: 16),
//                   CategoryCard(
//                     icon: Icons.fastfood,
//                     title: 'Makanan',
//                   ),
//                   SizedBox(width: 16),
//                   CategoryCard(
//                     icon: Icons.local_drink,
//                     title: 'Minuman',
//                   ),
//                   SizedBox(width: 16),
//                   CategoryCard(
//                     icon: Icons.cake,
//                     title: 'Kue',
//                   ),
//                   SizedBox(width: 16),
//                   CategoryCard(
//                     icon: Icons.local_pizza,
//                     title: 'Pizza',
//                   ),
//                   SizedBox(width: 16),
//                 ],
//               ),
//             ),
//             const Padding(
//               padding: EdgeInsets.all(16.0),
//               child: Text(
//                 'Makanan Terbaru',
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//             ),
//             ListView.builder(
//               shrinkWrap: true,
//               physics: const NeverScrollableScrollPhysics(),
//               itemCount: 10,
//               itemBuilder: (BuildContext context, int index) {
//                 return ListTile(
//                   leading: Image.network(
//                     'https://via.placeholder.com/100',
//                     width: 60,
//                     height: 60,
//                     fit: BoxFit.cover,
//                   ),
//                   title: Text('Makanan $index'),
//                   subtitle: Text('Deskripsi makanan $index'),
//                   trailing: IconButton(
//                     icon: const Icon(Icons.favorite_border),
//                     onPressed: () {
//                       // Aksi yang dijalankan saat tombol favorit ditekan
//                     },
//                   ),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _title({Color? color}) {
//     return Text(
//       'Card title',
//       style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: color),
//     );
//   }

//   Widget _content({Color? color}) {
//     return Text(
//       'This a card description',
//       style: TextStyle(color: color),
//     );
//   }

//   Widget _footer({Color? color}) {
//     return Row(
//       children: [
//         const CircleAvatar(
//           backgroundImage: AssetImage(
//             'assets/avatar.png',
//           ),
//           radius: 12,
//         ),
//         const SizedBox(
//           width: 4,
//         ),
//         Expanded(
//             child: Text(
//           'Super user',
//           style: TextStyle(color: color),
//         )),
//         IconButton(onPressed: () {}, icon: const Icon(Icons.share))
//       ],
//     );
//   }

//   Widget _tag(String tag, VoidCallback onPressed) {
//     return InkWell(
//       onTap: onPressed,
//       child: Container(
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(6), color: Colors.green),
//         padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
//         child: Text(
//           tag,
//           style: const TextStyle(color: Colors.white),
//         ),
//       ),
//     );
//   }
// }
