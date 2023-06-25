import 'package:flutter/material.dart';
import 'package:flutter_uas/dbHelper/sql_helper.dart';
import 'package:flutter_uas/navBar/nav_drawer.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CRUD SQLite',
      initialRoute: '/',
      routes: {
        '/': (context) => const addScreen(),
        '/add': (context) => AddDataScreen(),
        '/update': (context) => const UpdateDataScreen(),
      },
    );
  }
}

class addScreen extends StatefulWidget {
  const addScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<addScreen> {
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

  Future<void> _deleteData(int id) async {
    await DBHelper.instance.deleteMakanan(id);
    await _loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      body: ListView.builder(
        itemCount: _makananList.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: ListTile(
                title: Text(_makananList[index]['nama_makanan']),
                subtitle: Text(_makananList[index]['kategori']),
                trailing: IconButton(
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Konfirmasi'),
                          content: const Text(
                              'Apakah anda yakin ingin menghapus data ini?'),
                          actions: [
                            TextButton(
                              child: const Text('Batal'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                            TextButton(
                              child: const Text('Hapus'),
                              onPressed: () {
                                _deleteData(_makananList[index]['id']);
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/update',
                    arguments: _makananList[index],
                  ).then((value) {
                    if (value != null && value is bool && value) {
                      _loadData();
                    }
                  });
                },
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, '/add').then((value) {
            if (value != null && value is bool && value) {
              _loadData();
            }
          });
        },
      ),
    );
  }
}

class AddDataScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  String? _namaMakanan;
  String? _kategori;
  String? _deskripsi;
  String? _asalMakanan;
  String? _tanggalDibuat;
  String? _durasiMasak;

  AddDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Data'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Nama Makanan',
                  prefixIcon: const Icon(Icons.restaurant),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Nama Makanan harus diisi';
                  }
                  return null;
                },
                onSaved: (value) {
                  _namaMakanan = value;
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Kategori',
                  prefixIcon: const Icon(Icons.category),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Kategori harus diisi';
                  }
                  return null;
                },
                onSaved: (value) {
                  _kategori = value;
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Asal Makanan',
                  prefixIcon: const Icon(Icons.place),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Asal Makanan harus diisi';
                  }
                  return null;
                },
                onSaved: (value) {
                  _asalMakanan = value;
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Path Image',
                  prefixIcon: const Icon(Icons.image_rounded),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Path image harus di isi';
                  }
                  return null;
                },
                onSaved: (value) {
                  _tanggalDibuat = value;
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Durasi Masak',
                  prefixIcon: const Icon(Icons.timer),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Durasi Masak harus diisi';
                  }
                  return null;
                },
                onSaved: (value) {
                  _durasiMasak = value;
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                maxLines: 5, // Menampilkan maksimum 5 baris
                decoration: InputDecoration(
                  labelText: 'Deskripsi',
                  prefixIcon: const Icon(Icons.description),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Deskripsi harus diisi';
                  }
                  return null;
                },
                onSaved: (value) {
                  _deskripsi = value;
                },
              ),
              const SizedBox(height: 16.0),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.save),
                      SizedBox(width: 8.0),
                      Text('Simpan'),
                    ],
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      Map<String, dynamic> makanan = {
                        'nama_makanan': _namaMakanan,
                        'kategori': _kategori,
                        'deskripsi': _deskripsi,
                        'asal_makanan': _asalMakanan,
                        'tanggal_dibuat': _tanggalDibuat,
                        'durasi_masak': _durasiMasak,
                      };
                      DBHelper.instance.insertMakanan(makanan).then((id) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyApp()),
                        );
                      });
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UpdateDataScreen extends StatefulWidget {
  const UpdateDataScreen({super.key});

  @override
  _UpdateDataScreenState createState() => _UpdateDataScreenState();
}

class _UpdateDataScreenState extends State<UpdateDataScreen> {
  final _formKey = GlobalKey<FormState>();

  late int _id;
  String? _namaMakanan;
  String? _kategori;
  String? _deskripsi;
  String? _asalMakanan;
  String? _tanggalDibuat;
  String? _durasiMasak;

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    _id = args['id'];
    _namaMakanan = args['nama_makanan'];
    _kategori = args['kategori'];
    _deskripsi = args['deskripsi'];
    _asalMakanan = args['asal_makanan'];
    _tanggalDibuat = args['tanggal_dibuat'];
    _durasiMasak = args['durasi_masak'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Perbarui Data'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                initialValue: _namaMakanan,
                decoration: InputDecoration(
                  labelText: 'Nama Makanan',
                  prefixIcon: const Icon(Icons.restaurant),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Nama Makanan harus diisi';
                  }
                  return null;
                },
                onSaved: (value) {
                  _namaMakanan = value;
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                initialValue: _kategori,
                decoration: InputDecoration(
                  labelText: 'Kategori',
                  prefixIcon: const Icon(Icons.category),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Kategori harus diisi';
                  }
                  return null;
                },
                onSaved: (value) {
                  _kategori = value;
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                initialValue: _asalMakanan,
                decoration: InputDecoration(
                  labelText: 'Asal Makanan',
                  prefixIcon: const Icon(Icons.place),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Asal Makanan harus diisi';
                  }
                  return null;
                },
                onSaved: (value) {
                  _asalMakanan = value;
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                initialValue: _tanggalDibuat,
                decoration: InputDecoration(
                  labelText: 'Path image',
                  prefixIcon: const Icon(Icons.image_rounded),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Path image harus di isi';
                  }
                  return null;
                },
                onSaved: (value) {
                  _tanggalDibuat = value;
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                initialValue: _durasiMasak,
                decoration: InputDecoration(
                  labelText: 'Durasi Masak',
                  prefixIcon: const Icon(Icons.timer),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Durasi Masak harus diisi';
                  }
                  return null;
                },
                onSaved: (value) {
                  _durasiMasak = value;
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                initialValue: _deskripsi,
                maxLines: 5, // Menampilkan maksimum 5 baris
                decoration: InputDecoration(
                  labelText: 'Deskripsi',
                  prefixIcon: const Icon(Icons.description),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Deskripsi harus diisi';
                  }
                  return null;
                },
                onSaved: (value) {
                  _deskripsi = value;
                },
              ),
              const SizedBox(height: 16.0),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.save),
                      SizedBox(width: 8.0),
                      Text('Simpan'),
                    ],
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      Map<String, dynamic> updatedMakanan = {
                        'id': _id,
                        'nama_makanan': _namaMakanan,
                        'kategori': _kategori,
                        'deskripsi': _deskripsi,
                        'asal_makanan': _asalMakanan,
                        'tanggal_dibuat': _tanggalDibuat,
                        'durasi_masak': _durasiMasak,
                      };
                      DBHelper.instance.updateMakanan(updatedMakanan).then((_) {
                        Navigator.of(context).pop(true);
                      });
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
