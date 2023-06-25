import 'package:flutter/material.dart';

class DetailMakananScreen extends StatefulWidget {
  final Map<String, dynamic> makanan;

  const DetailMakananScreen({required this.makanan});

  @override
  _DetailMakananScreenState createState() => _DetailMakananScreenState();
}

class _DetailMakananScreenState extends State<DetailMakananScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, // <-- SEE HERE
        ),
        title: const Text('Detail Makanan'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Gambar makanan
              Container(
                width: double.infinity,
                height: 200,
                child: Image.asset(
                  widget.makanan[
                      'tanggal_dibuat'], // Menggunakan nilai path dari database
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16.0),
              // Nama makanan
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Icon(Icons.restaurant_menu),
                  ),
                  const SizedBox(width: 4.0),
                  Text(
                    widget.makanan['nama_makanan'],
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              // Asal makanan
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Icon(Icons.location_on),
                  ),
                  const SizedBox(width: 4.0),
                  Text('${widget.makanan['asal_makanan']}'),
                ],
              ),
              const SizedBox(height: 8.0),
              // Durasi masak
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Icon(Icons.timer),
                  ),
                  const SizedBox(width: 4.0),
                  Text('${widget.makanan['durasi_masak']}'),
                ],
              ),
              const SizedBox(height: 8.0),
              // Deskripsi makanan
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Icon(Icons.description),
                  ),
                  SizedBox(width: 4.0),
                  Flexible(
                    child: Text(
                      'Deskripsi :',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(22, 10, 10, 10),
                  ),
                  const SizedBox(width: 4.0),
                  Flexible(
                    child: Text(
                      '${widget.makanan['deskripsi']}',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
