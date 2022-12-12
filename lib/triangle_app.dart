String detectTriangle(num sideA, num sideB, num sideC) {
  // /// Contoh kode tidak bersih
  // /// Pemeriksaan panjang sisi yang berulang sebanyak tiga kali untuk setiap sisi
  // if (sideA < 1 ||  sideB < 1 || sideC < 1) {
  //   throw Exception();
  // }

  /// Clean code
  final sides = [sideA, sideB, sideC];
  sides.sort();

  for (var side in sides) {
    if (side < 1) {
      throw Exception();
    }
  }

  if ((sides[0] + sides[1] <= sides[2]) ||(sides[0] + sides[2] <= sides[1]) ||(sides[1] + sides[2] <= sides[0])) {
    throw Exception('Inequal Triangle');
  }

  if (sides[0] == sides[1] && sides[0] == sides[2]) {
    return "Segitiga sama sisi";
  }

  if (sides[0] == sides[1] || sides[1] == sides[2]) {
    return "Segitiga sama kaki";
  }

  // /// NOT Clean code
  // if (sides[0] != sides[1] && sides[1] != sides[2]) {
  //   return "Segitiga sembarang";
  // }
  return "Segitiga sembarang";
}
