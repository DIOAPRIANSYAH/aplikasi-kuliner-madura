import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uas/dbHelper/sql_helper.dart';
import 'package:flutter_uas/navBar/nav_drawer.dart';
import 'package:flutter_uas/pages/detail_food.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;
  List<Map<String, dynamic>> _makananList = [];

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    List<Map<String, dynamic>> makananList =
        await DBHelper.instance.getAllMakanan();
    setState(() {
      _makananList = makananList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, // <-- SEE HERE
        ),
        title: const Text(
          "Home",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      drawer: DrawerWidget(),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                Icon(
                  Icons.restaurant_menu_rounded,
                  size: 24,
                ),
                SizedBox(width: 8),
                Text(
                  'Makanan Terpopuler',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          _makananList.isNotEmpty
              ? CarouselSlider.builder(
                  itemCount: _makananList.length,
                  itemBuilder: (context, index, innerIndex) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailMakananScreen(
                                makanan: _makananList[index],
                              ),
                            ),
                          );
                        },
                        child: Card(
                          child: ListView(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            children: [
                              // Gambar dummy
                              Container(
                                width: double.infinity,
                                height: 180,
                                child: Image.asset(
                                  _makananList[index][
                                      'tanggal_dibuat'], // Menggunakan nilai path dari database
                                  fit: BoxFit.cover,
                                ),
                              ),

                              const SizedBox(height: 8.0),
                              // Nama makanan
                              Text(
                                _makananList[index]['nama_makanan'],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                              // Tombol hapus
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    viewportFraction: 0.9,
                    aspectRatio: 16 / 9,
                  ),
                )
              : const SizedBox(
                  height: 50,
                ), // Tampilkan kotak kosong jika _makananList kosong
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                Icon(
                  Icons.category_outlined,
                  size: 24,
                ),
                SizedBox(width: 8),
                Text(
                  'Kategori Makanan',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _makananList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Column(
                      children: [
                        // Gambar dummy
                        Container(
                          width: 100,
                          height: 100,
                          child: Image.asset('assets/foods/category.jpg'),
                        ),
                        // Nama makanan
                        Text(
                          _makananList[index]['kategori'],
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                Icon(
                  Icons.favorite_border_rounded,
                  size: 24,
                ),
                SizedBox(width: 8),
                Text(
                  'Favorit',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _makananList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailMakananScreen(
                          makanan: _makananList[index],
                        ),
                      ),
                    );
                  },
                  child: Card(
                    child: Row(
                      children: [
                        // Gambar dummy
                        Container(
                          width: 100,
                          height: 100,
                          child: Image.asset(
                            _makananList[index][
                                'tanggal_dibuat'], // Menggunakan nilai path dari database
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Nama makanan
                              Row(
                                children: [
                                  const Icon(Icons.restaurant_menu),
                                  const SizedBox(width: 4.0),
                                  Flexible(
                                    child: Text(
                                      _makananList[index]['nama_makanan'],
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 4.0),
                              // Asal makanan
                              Row(
                                children: [
                                  const Icon(Icons.location_on),
                                  const SizedBox(width: 4.0),
                                  Flexible(
                                    child: Text(
                                        _makananList[index]['asal_makanan']),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 4.0),
                              // Deskripsi pendek
                              Row(
                                children: [
                                  const Icon(
                                    Icons.access_time_filled,
                                  ),
                                  const SizedBox(width: 4.0),
                                  Flexible(
                                    child: Text(
                                      _makananList[index]['durasi_masak'],
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
