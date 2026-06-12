class Mahasiswa {
  // Enkapsulasi: variabel private dengan underscore (_)
  String _nama;
  int _nilai;

  // Konstruktor
  Mahasiswa(this._nama, this._nilai);

  // Getter
  String get nama => _nama;
  int get nilai => _nilai;

  // Setter dengan validasi
  set nilai(int nilaiBaru) {
    if (nilaiBaru >= 0 && nilaiBaru <= 100) {
      _nilai = nilaiBaru;
    } else {
      print("Nilai tidak valid!");
    }
  }

  void tampilkanInfo() {
    print("Mahasiswa: $_nama, Nilai: $_nilai");
  }
}

void main() {
  var mhs = Mahasiswa("Budi", 85);
  mhs.tampilkanInfo();
  
  // Menggunakan setter
  mhs.nilai = 95;
  print("Nilai setelah diupdate: ${mhs.nilai}");
}
