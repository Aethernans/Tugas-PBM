class Jubah {

  late String nama;
  late int kekuatan;
  late int kesehatan;

  Jubah(String a, int b, int c) {
    this.nama = a;  
    this.kekuatan = b;
    this.kesehatan = c;
  }

  String getNama() {
    return this.nama;
  }

  int getTambahKesehatan() {
    return this.kesehatan * 5;
  }

  int getNilaiKekuatan() {
    return this.kekuatan * 2;
  }
}
