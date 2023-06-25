class Item {
  late int _id;
  late String nama = 'a';
  late String asal_daerah;
  late String kategori;
  late String deskripsi;
  late String created;
  late int durasi_masak;

  int get id => _id;
  //set id => _id;
  set id(int id) {
    _id = id;
  }

  Item(
      {required String nama,
      required String asal_daerah,
      required String created,
      required String deskripsi,
      required int durasi_masak,
      required String kategori});

  Item.fromMap(Map<String, dynamic> map) {
    _id = map['id'];
    nama = map['nama'];
    asal_daerah = map['asal_daerah'];
    kategori = map['kategori'];
    deskripsi = map['deskripsi'];
    created = map['created'];
    durasi_masak = map['durasi_masak'];
  }

  Map<String, dynamic> toMap() {
    return {
      'nama': nama,
      'asal_daerah': asal_daerah,
      'kategori': kategori,
      'deskripsi': deskripsi,
      'created': created,
      'durasi_masak': durasi_masak,
    };
  }
}
