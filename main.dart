// Kelas dengan Enkapsulasi
class User {
  String _name; // Data disembunyikan (Private)
  
  // Konstruktor
  User(this._name);

  // Getter
  String get name => _name;

  // Setter dengan validasi
  set name(String newName) {
    if (newName.isNotEmpty) {
      _name = newName;
    } else {
      print("Nama tidak boleh kosong!");
    }
  }
}

// Kelas dengan Konstruktor Khusus (Named Constructor)
class Product {
  String name;
  double price;

  Product(this.name, this.price);

  // Named Constructor
  Product.diskon(this.name) : price = 0.0;
}

void main() {
  // 1. Implementasi Konstruktor
  var p1 = Product("Smartphone", 5000000);
  print("Produk: ${p1.name}, Harga: ${p1.price}");

  // 2. Implementasi Enkapsulasi
  var user = User("Jeinnet");
  print("User awal: ${user.name}");
  
  user.name = "Jeinnet Verara Ayomi"; // Menggunakan Setter
  print("User update: ${user.name}");
}
