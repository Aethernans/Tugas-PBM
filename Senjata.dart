class Senjata {

  late String nama;
  late int kekuatan;

  Senjata(String a, int b) {
    this.nama = a;
    this.kekuatan = b;
  }

  String getNama() {
    return this.nama;
  }

  int getKekuatanSerang() {
    return this.kekuatan * 2;
  }
}