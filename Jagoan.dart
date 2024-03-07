import 'Jubah.dart';
import 'Senjata.dart';


class Jagoan {
  late String nama;
  late int kesehatanDasar;
  late int kekuatanDasar;
  late int derajat;
  late int totalKerusakan;
  late int kenaikanKesehatan;
  late int kenaikanKekuatan;
  late bool hidup;

  late Jubah jubah;
  late Senjata senjata;


  Jagoan(String nama) {
    this.nama = nama;
    this.kesehatanDasar = 100;
    this.kekuatanDasar = 20;
    this.derajat = 1;
    this.kenaikanKekuatan = 5;
    this.kenaikanKesehatan = 25;
    this.hidup = true;
    this.totalKerusakan = kekuatanDasar + kenaikanKekuatan;
    
  }

  void setJubah(Jubah jubah) {
    this.jubah = jubah;
  }

  void setSenjata(Senjata senjata) {
    this.senjata = senjata;
  }

  String getNama() {
    return this.nama;
  }

  int sehatMaksimal() {
    return this.kesehatanDasar + this.jubah.getTambahKesehatan() + this.derajat*this.kenaikanKesehatan;
  }

  int getKekuatanSerangJagoan() {
    return this.kekuatanDasar + this.senjata.getKekuatanSerang() + this.derajat * this.kenaikanKekuatan;  
  }

  int getNilaiKesehatan() {
    return this.sehatMaksimal() - this.totalKerusakan;
  }

  void naikDerajat() {
    this.derajat++;
  }

  bool getStatus() {
    return this.hidup;
  }

  void menyerang(Jagoan lawan) {
    int kerusakan = this.getKekuatanSerangJagoan();
    print("${this.nama} menyerang ${lawan.getNama()} dengan kekuatan = $kerusakan");
    lawan.bertahan(kerusakan);
    this.naikDerajat();
  }

  void bertahan(int kerusakan) {
    int kekuatanBertahan = this.jubah.getNilaiKekuatan();
    int selisihKerusakan;
    print("${this.nama} memiliki kekuatan bertahan = ${kekuatanBertahan}");

    if(kerusakan > kekuatanBertahan) {
      selisihKerusakan = kerusakan - kekuatanBertahan;
    } else {
      selisihKerusakan = 0;
    }
    print("Kerusakan yang diperoleh = ${selisihKerusakan}");
    
    print("");

    this.totalKerusakan += selisihKerusakan;

    if(this.getNilaiKesehatan() <= 0) {
      this.hidup = false;
      this.totalKerusakan = this.sehatMaksimal();
    }
    this.info();
  }

  void info() {
    print("Jagoan           : ${this.nama}");
    print("Derajat          : ${this.derajat}");
    print("Kesehatan Dasar  : ${this.kesehatanDasar}");
    print("Kekuatan Dasar   : ${this.kekuatanDasar}");
    print("Kesehatan        : ${this.getNilaiKesehatan()} / ${this.sehatMaksimal()}");
    print("Kekuatan Maksimal: ${this.getKekuatanSerangJagoan()}");
    print("Masih hidup      : ${this.hidup}");
  }

  void getNamaJubah() {
    print("Jubah ${this.jubah.getNama()}");
  }

  void getNamaSenjata() {
    print("Senjata ${this.senjata.getNama()}");
  }

}