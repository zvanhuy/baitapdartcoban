import 'package:flutter/material.dart';

void main() {
  hello(); // Bài 6: gọi hàm trong main
  runApp(const MyApp());
}

// Bài 10: Class SinhVien
class SinhVien {
  String name;
  int age;
  double gpa;

  SinhVien(this.name, this.age, this.gpa);

  String hienThiThongTin() {
    return 'Tên: $name\nTuổi: $age\nĐiểm trung bình: ${gpa.toStringAsFixed(2)}';
  }
}

// Bài 6: Hàm không tham số
void hello() {
  debugPrint('Hello Dart');
}

// Bài 7: Hàm thường
int tinhTong(int a, int b) {
  return a + b;
}

// Bài 8: Arrow function
int tinhTongArrow(int a, int b) => a + b;

// Bài 9: Tổng List
int tinhTongList(List<int> list) {
  int tong = 0;
  for (int so in list) {
    tong += so;
  }
  return tong;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bài thực hành 1 - Dart cơ bản',
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  String bai1() {
    String tenSinhVien = 'Nguyễn Văn Huy';
    var tuoi = 20;
    final double diemTrungBinh = 8.5;
    const bool trangThaiTotNghiep = false;

    return '''
Tên sinh viên: $tenSinhVien
Tuổi: $tuoi
Điểm trung bình: $diemTrungBinh
Trạng thái tốt nghiệp: $trangThaiTotNghiep
''';
  }

  String bai2() {
    int a = 10;
    double b = 2.5;

    double tong = a + b;
    double hieu = a - b;
    double tich = a * b;
    double thuong = a / b;

    return '''
Biến int: $a
Biến double: $b

Cộng: $a + $b = $tong
Trừ: $a - $b = $hieu
Nhân: $a * $b = $tich
Chia: $a / $b = $thuong
''';
  }

  String bai3() {
    String hoTen = 'Đinh Thế Quang';
    double diem = 6.5;

    bool dau = diem >= 5;

    return '''
Họ tên: $hoTen
Điểm: $diem
Biến bool kết quả: $dau
Kết luận: ${dau ? "Sinh viên đậu" : "Sinh viên rớt"}
''';
  }

  String bai4() {
    List<int> danhSach = [2, 4, 6, 8, 10];

    int tong = 0;
    for (int so in danhSach) {
      tong += so;
    }

    return '''
Danh sách: $danhSach
Phần tử đầu tiên: ${danhSach.first}
Phần tử cuối cùng: ${danhSach.last}
Tổng các phần tử: $tong
''';
  }

  String bai5() {
    Map<String, dynamic> sinhVien = {
      'name': 'Lê Văn Luyện',
      'age': 21,
      'gpa': 8.2,
    };

    return '''
Toàn bộ Map: $sinhVien

Tên sinh viên: ${sinhVien['name']}
Tuổi: ${sinhVien['age']}
Điểm trung bình: ${sinhVien['gpa']}
''';
  }

  String bai6() {
    return '''Hello Dart
''';
  }

  String bai7() {
    int a = 7;
    int b = 5;
    int ketQua = tinhTong(a, b);

    return '''
a = $a
b = $b
tinhTong($a, $b) = $ketQua
''';
  }

  String bai8() {
    int a = 12;
    int b = 8;
    int ketQua = tinhTongArrow(a, b);

    return '''
a = $a
b = $b
tinhTongArrow($a, $b) = $ketQua

Nhận xét:
- Hàm thường dùng khi có nhiều bước xử lý.
- Arrow function dùng khi hàm ngắn gọn, chỉ có 1 biểu thức.
''';
  }

  String bai9() {
    List<int> list = [1, 2, 3, 4, 5];
    int tong = tinhTongList(list);

    return '''
Danh sách: $list
Tổng các phần tử trong danh sách: $tong
''';
  }

  String bai10() {
    SinhVien sv1 = SinhVien('Đoàn Văn Sáng', 20, 7.9);
    SinhVien sv2 = SinhVien('Hoàng Văn Sáng', 22, 8.7);

    return '''
Sinh viên 1:
${sv1.hienThiThongTin()}

Sinh viên 2:
${sv2.hienThiThongTin()}
''';
  }

  Widget khungBai(String tieuDe, String noiDung) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            tieuDe,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            noiDung,
            style: const TextStyle(
              fontSize: 15,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bài thực hành 1: Dart cơ bản'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            khungBai('Bài 1: Khai báo và sử dụng biến', bai1()),
            khungBai('Bài 2: Thực hiện phép toán với số', bai2()),
            khungBai('Bài 3: Kiểm tra điều kiện với bool', bai3()),
            khungBai('Bài 4: Làm việc với List', bai4()),
            khungBai('Bài 5: Làm việc với Map', bai5()),
            khungBai('Bài 6: Viết hàm không có tham số', bai6()),
            khungBai('Bài 7: Hàm có tham số và trả về', bai7()),
            khungBai('Bài 8: Arrow function', bai8()),
            khungBai('Bài 9: Hàm xử lý danh sách', bai9()),
            khungBai('Bài 10: Xây dựng lớp SinhVien', bai10()),
          ],
        ),
      ),
    );
  }
}