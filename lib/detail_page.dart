import 'package:flutter/material.dart';
import 'package:resepku/data.dart';

class DetailPage extends StatefulWidget {
  final Makanan makanan;
  const DetailPage({required this.makanan, super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    var kWidth = MediaQuery.of(context).size.width; // Mendapatkan lebar layar perangkat

    return Scaffold(
      backgroundColor: const Color(0xfffffc1c), // Mengatur warna latar belakang Scaffold
      body: ListView(
        children: [
          allWidgets(kWidth), // Memanggil fungsi allWidgets dengan parameter lebar layar
        ],
      ),
    );
  }
  // Fungsi untuk menampilkan semua widget pada halaman detail.
  Widget allWidgets(kWidth) {
    return Column(
      children: [
        Stack(
          children: [
            Image.asset(
              widget.makanan.pathFoto, // Menampilkan gambar makanan dari path yang diambil dari objek makanan.
              width: kWidth,
              scale: .4,
            ),
            IconButton(
              onPressed: () {
                Navigator.pop(context); // Tombol kembali, ketika ditekan akan kembali ke halaman sebelumnya.
              },
              icon: Icon(
                Icons.arrow_back,
                size: kWidth / 15,
              ),
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.fromLTRB(
            kWidth / 20,
            kWidth / 20,
            kWidth / 20,
            kWidth / 5,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(kWidth / 20),
              topRight: Radius.circular(kWidth / 20),
            ),
          ),
          child: SizedBox(
            width: kWidth,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.makanan.nama, // Menampilkan nama makanan.
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: kWidth / 22,
                  ),
                ),
                SizedBox(
                  height: kWidth / 50,
                ),
                Text(
                  'Bahan:', // Label untuk daftar bahan.
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: kWidth / 22,
                  ),
                ),
                Text(
                  widget.makanan.bahan, // Menampilkan daftar bahan.
                  style: TextStyle(
                    fontSize: kWidth / 22,
                  ),
                ),
                SizedBox(
                  height: kWidth / 50,
                ),
                Text(
                  'Cara Membuat:', // Label untuk langkah-langkah membuat.
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: kWidth / 22,
                  ),
                ),
                Text(
                  widget.makanan.caraMasak, // Menampilkan langkah-langkah membuat.
                  style: TextStyle(
                    fontSize: kWidth / 22,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
