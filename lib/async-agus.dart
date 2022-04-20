void main() async {
  func1();
  func2();
  await func4(5).then(
    (value) {
      print('Selamat');
      print(value);
    },
  ).catchError((error) {
    print('error');
    print(error);
  });
  func3();
}

func1() {
  print('data 1');
}

func2() {
  print('data 2');
}

func3() {
  print('data 3');
}

Future<String> func4(int minyak) {
  int stok = 200;
  return Future.delayed(Duration(seconds: 3), () {
    if (minyak < stok) {
      return 'berhasil membeli barang sejumlah $minyak ';
    } else {
      throw 'Maaf Stock Barang Tidak Ada :( ';
    }
  });
}