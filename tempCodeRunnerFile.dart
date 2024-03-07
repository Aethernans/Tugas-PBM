
import 'Jagoan.dart';
import 'Jubah.dart';
import 'Senjata.dart';

void main(List<String> args) {
    Jagoan pitung = new Jagoan("Pitung");
    Jubah jubahSilatPutih = new Jubah("Jubah Silat Putih", 7, 50);
    Senjata golok = new Senjata("Golok", 20);

    pitung.setJubah(jubahSilatPutih);
    pitung.setSenjata(golok);
    
    Jagoan jakaSembung = new Jagoan("Jaka Sembung");
    Jubah jubahSilatHitam = new Jubah("Jubah Silat Hitam", 10, 50);
    Senjata toya = new Senjata("Toya", 25);

    jakaSembung.setJubah(jubahSilatHitam);
    jakaSembung.setSenjata(toya);

    pitung.info();
    jakaSembung.info();

    jakaSembung.menyerang(pitung);
    jakaSembung.menyerang(pitung);
    jakaSembung.menyerang(pitung);
    jakaSembung.menyerang(pitung);
        
    pitung.menyerang(jakaSembung);
    pitung.menyerang(jakaSembung);       
    pitung.menyerang(jakaSembung);
    pitung.menyerang(jakaSembung);

    print("${pitung.getNama()} adalah ${pitung.getNilaiKesehatan()}");
    print("${jakaSembung.getNama()} : ${jakaSembung.getNilaiKesehatan()}");

    if (pitung.getStatus() && jakaSembung.getStatus() == false) {
      print("${pitung.getNama()} menang cuy!");
      } else if (pitung.getStatus() == false && jakaSembung.getStatus()) {
        print("${jakaSembung.getNama()} menang cuy!");
        } else if (pitung.getNilaiKesehatan() > jakaSembung.getNilaiKesehatan()) {
          print("${pitung.getNama()} menang cuy!");
          } else if (pitung.getNilaiKesehatan() < jakaSembung.getNilaiKesehatan()) {
            print("${jakaSembung.getNama()} menang cuy!");
            } else {
              print("Kedua jagoan seri, cuy!");
              }
  }