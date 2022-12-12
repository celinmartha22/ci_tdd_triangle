/// library untuk melakukan pengujian
import 'package:flutter_test/flutter_test.dart';

import 'package:dicoding_flutter_app_3_ci_triagle_app/triangle_app.dart';

void main() {
  group(
    'Detect the triangle',
    () {
      test(
        'Should throw error when there is side less than 1',
        () {
          expect(() => detectTriangle(-1, 2, 2), throwsA(isA<Exception>()));
          expect(() => detectTriangle(1, -2, 2), throwsA(isA<Exception>()));
          expect(() => detectTriangle(1, 2, -2), throwsA(isA<Exception>()));
        },
      );

      test(
        'Should throw error when side a + b <= c',
        () {
          expect(() => detectTriangle(1, 2, 9), throwsA(isA<Exception>()));
          expect(() => detectTriangle(5, 1, 3), throwsA(isA<Exception>()));
          expect(() => detectTriangle(2, 5, 1), throwsA(isA<Exception>()));
        },
      );

      test(
        'Should return "Segitiga sama sisi" when all sides are equal',
        () {
          expect(detectTriangle(1, 1, 1), "Segitiga sama sisi");
          expect(detectTriangle(2, 2, 2), "Segitiga sama sisi");
          expect(detectTriangle(2, 2, 1), isNot("Segitiga sama sisi"));
          expect(detectTriangle(3, 3, 5), isNot("Segitiga sama sisi"));

          // /// TIDAK LULUS [inequality]
          // /// [inequality] = jumlah panjang 2 sisi harus lebih besar daripada sisi yang lain
          // expect(detectTriangle(1, 1, 2), isNot("Segitiga sama sisi"));
          // expect(detectTriangle(1, 2, 1), isNot("Segitiga sama sisi"));
          // expect(detectTriangle(2, 1, 1), isNot("Segitiga sama sisi"));
        },
      );

      test(
        'Should return "Segitiga sama kaki" when only two sides are equal',
        () {
          expect(detectTriangle(2, 2, 1), ("Segitiga sama kaki"));
          expect(detectTriangle(2, 3, 2), ("Segitiga sama kaki"));
          expect(detectTriangle(1, 4, 4), ("Segitiga sama kaki"));
          expect(detectTriangle(4, 1, 4), ("Segitiga sama kaki"));
          expect(detectTriangle(1, 1, 1), isNot("Segitiga sama kaki"));

          // /// TIDAK LULUS [inequality]
          // /// [inequality] = jumlah panjang 2 sisi harus lebih besar daripada sisi yang lain
          // expect(detectTriangle(1, 1, 2), ("Segitiga sama kaki"));
          // expect(detectTriangle(1, 2, 1), ("Segitiga sama kaki"));
          // expect(detectTriangle(2, 1, 1), ("Segitiga sama kaki"));
        },
      );

      test(
        'Should return "Segitiga sembarang" when no sides are equal',
        () {
          expect(detectTriangle(5, 2, 4), ("Segitiga sembarang"));
          expect(detectTriangle(3, 2, 4), ("Segitiga sembarang"));
          expect(detectTriangle(4, 1, 4), isNot("Segitiga sembarang"));
          expect(detectTriangle(1, 1, 1), isNot("Segitiga sembarang"));

          // /// TIDAK LULUS [inequality]
          // /// [inequality] = jumlah panjang 2 sisi harus lebih besar daripada sisi yang lain
          // expect(detectTriangle(1, 2, 3), ("Segitiga sembarang"));
          // expect(detectTriangle(3, 2, 1), ("Segitiga sembarang"));
          // expect(detectTriangle(1, 1, 2), isNot("Segitiga sembarang"));
          // expect(detectTriangle(1, 2, 1), isNot("Segitiga sembarang"));
          // expect(detectTriangle(2, 1, 1), isNot("Segitiga sembarang"));
        },
      );
    },
  );
}
