import 'package:circular_clip_route/circular_clip_route.dart';
import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';

import '../navBar/nav_drawer.dart';

class ContactInfo {
  const ContactInfo({
    required this.avatarAsset,
    required this.name,
    required this.email,
    required this.alamat,
    required this.prodi,
    required this.jurusan,
    required this.hobi,
    required this.kampus,
  });

  final String avatarAsset;
  final String name;
  final String email;
  final String alamat;
  final String prodi;
  final String jurusan;
  final String hobi;
  final String kampus;
}

const contactInfos = [
  ContactInfo(
    avatarAsset: 'assets/avatar/ipong.jpeg',
    name: 'ABG Ghafur',
    email: 'ipong@gmail.com',
    alamat: 'Sampang, Jawa Timur',
    prodi: 'D-III Manajemen Informatika',
    jurusan: 'Teknologi Informasi',
    kampus: 'Politeknik Negeri Malang',
    hobi: 'N/A',
  ),
  ContactInfo(
    avatarAsset: 'assets/avatar/annas.jpeg',
    name: 'Annas Aminulloh T.H',
    email: 'inong@gmail.com',
    alamat: 'Sampang, Jawa Timur',
    prodi: 'D-III Manajemen Informatika',
    jurusan: 'Teknologi Informasi',
    kampus: 'Politeknik Negeri Malang',
    hobi: 'N/A',
  ),
  ContactInfo(
    avatarAsset: 'assets/avatar/dio.jpeg',
    name: 'Dio Apriansyah',
    email: 'diokun@gmail.com',
    alamat: 'Lampung Tengah, Lampung',
    prodi: 'D-III Manajemen Informatika',
    jurusan: 'Teknologi Informasi',
    kampus: 'Politeknik Negeri Malang',
    hobi: 'N/A',
  ),
  ContactInfo(
    avatarAsset: 'assets/avatar/eka.jpeg',
    name: 'Eka Yulianita Widiyanti',
    email: 'ekaa@gmail.com',
    alamat: 'Pamekasan, Jawa Timur',
    prodi: 'D-III Manajemen Informatika',
    jurusan: 'Teknologi Informasi',
    kampus: 'Politeknik Negeri Malang',
    hobi: 'N/A',
  ),
  ContactInfo(
    avatarAsset: 'assets/avatar/ndf.jpeg',
    name: 'Nadhif Adyatma Zain',
    email: 'ndf@gmail.com',
    alamat: 'Sampang, Jawa Timur',
    prodi: 'D-III Manajemen Informatika',
    jurusan: 'Teknologi Informasi',
    kampus: 'Politeknik Negeri Malang',
    hobi: 'N/A',
  ),
  ContactInfo(
    avatarAsset: 'assets/avatar/jafar.jpeg',
    name: 'Jafar Malik Ibrahim',
    email: 'japir@gmail.com',
    alamat: 'Sampang, Jawa Timur',
    prodi: 'D-III Manajemen Informatika',
    jurusan: 'Teknologi Informasi',
    kampus: 'Politeknik Negeri Malang',
    hobi: 'N/A',
  ),
  ContactInfo(
    avatarAsset: 'assets/avatar/rohma.jpeg',
    name: 'Rohmawati',
    email: 'rohimah@gmail.com',
    alamat: 'Sampang, Jawa Timur',
    prodi: 'D-III Manajemen Informatika',
    jurusan: 'Teknologi Informasi',
    kampus: 'Politeknik Negeri Malang',
    hobi: 'N/A',
  ),
];

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, // <-- SEE HERE
        ),
        title: const Text(
          "Profil Visitor",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      drawer: DrawerWidget(),
      body: ListView.builder(
        itemBuilder: (context, i) =>
            ContactListItem(contactInfo: contactInfos[i]),
        itemCount: contactInfos.length,
      ),
    );
  }
}

class ContactListItem extends StatefulWidget {
  const ContactListItem({
    required this.contactInfo,
  });

  final ContactInfo contactInfo;

  @override
  _ContactListItemState createState() => _ContactListItemState();
}

class _ContactListItemState extends State<ContactListItem> {
  final _avatarKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 2), // mengatur bayangan ke bawah
            ),
          ],
        ),
        child: ListTile(
          leading: SizedBox(
            key: _avatarKey,
            width: 50,
            height: 50,
            child: AvatarHero(contactInfo: widget.contactInfo),
          ),
          title: Text(widget.contactInfo.name),
          subtitle: Text(widget.contactInfo.email),
          trailing: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Tab(
              child: LoadingBouncingGrid.square(
                size: 25,
                backgroundColor: Colors.blue,
              ),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              CircularClipRoute<void>(
                builder: (context) =>
                    ContactDetailPage(contactInfo: widget.contactInfo),
                expandFrom: _avatarKey.currentContext!,
                curve: Curves.fastOutSlowIn,
                reverseCurve: Curves.fastOutSlowIn.flipped,
                opacity: ConstantTween(1),
                transitionDuration: const Duration(seconds: 1),
              ),
            );
          },
        ),
      ),
    );
  }
}

class AvatarHero extends StatelessWidget {
  final ContactInfo contactInfo;

  const AvatarHero({
    required this.contactInfo,
  });

  @override
  Widget build(BuildContext context) {
    final child = Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 8,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        clipBehavior: Clip.antiAlias,
        child: Image.asset(
          contactInfo.avatarAsset,
          fit: BoxFit.cover,
        ),
      ),
    );

    return Hero(
      tag: 'image_${contactInfo.hashCode}',
      createRectTween: (begin, end) {
        return RectTween(
          begin: Rect.fromCenter(
            center: begin!.center,
            width: begin.width,
            height: begin.height,
          ),
          end: Rect.fromCenter(
            center: end!.center,
            width: end.width,
            height: end.height,
          ),
        );
      },
      child: child,
    );
  }
}

class ContactDetailPage extends StatefulWidget {
  const ContactDetailPage({
    required this.contactInfo,
  });

  final ContactInfo contactInfo;

  @override
  _ContactDetailPageState createState() => _ContactDetailPageState();
}

class _ContactDetailPageState extends State<ContactDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FractionallySizedBox(
            widthFactor: 1,
            child: Container(
              alignment: Alignment.center,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    height: 140,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 220,
                    width: 220,
                    padding: const EdgeInsets.all(20.0),
                    child: AvatarHero(contactInfo: widget.contactInfo),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: widget.contactInfo.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: widget.contactInfo.email,
                      style: const TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Center(
                  child: RichText(
                    text: const TextSpan(
                      text: 'Kampus',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: widget.contactInfo.kampus,
                      style: const TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Center(
                  child: RichText(
                    text: const TextSpan(
                      text: 'Jurusan',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: widget.contactInfo.jurusan,
                      style: const TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Center(
                  child: RichText(
                    text: const TextSpan(
                      text: 'Program Studi',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: widget.contactInfo.prodi,
                      style: const TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Center(
                  child: RichText(
                    text: const TextSpan(
                      text: 'Alamat',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: widget.contactInfo.alamat,
                      style: const TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Center(
                  child: RichText(
                    text: const TextSpan(
                      text: 'Hobi',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: widget.contactInfo.hobi,
                      style: const TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  TableRow _buildTableRow({required String label, required String value}) {
    return TableRow(
      children: [
        IntrinsicWidth(
          child: Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.centerRight,
            child: Text(
              '$label:',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
        ),
        Text(value),
      ],
    );
  }
}
