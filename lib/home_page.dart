import 'package:flutter/material.dart';
import 'package:resepku/data.dart';
import 'package:resepku/detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key}); //construktor kelas HomePage

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Makanan> makanan = makananList; //Mendapatkan data makanan dari makananList.

  @override
  Widget build(BuildContext context) {
    var kWidth = MediaQuery.of(context).size.width; // Lebar layar
    return Scaffold(
      appBar: AppBar( // Mengatur warna bg dan bayangan
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton( //Tombol search pada app bar
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ))
        ],
        title: const Text(
          'ResepKu', // Judul aplikasi
          style: TextStyle( // mengatur style teks judul
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        children: [
          topContainer(kWidth), //Bagian atas halaman
          SizedBox(
            height: kWidth / 20,
          ),
          bottomContainer(kWidth), //Bagian bawah halaman
        ],
      ),
    );
  }

  Widget topContainer(double kWidth) { // Mengatur widget bagian atas
    return Column(
      children: [
        Image.asset(
          'assets/banner.png', // Memasukkan gambar pada bagian atas
          width: MediaQuery.of(context).size.width, // Mengatur lebar gambar sesuai layar
          scale: .5,
        ),
      ],
    );
  }

  Widget bottomContainer(kWidth) { // Mengatur Widget untuk bagian bawah halaman
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: kWidth / 20,
        vertical: kWidth / 15,
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset.zero,
            spreadRadius: 1,
            color: Colors.grey.shade400,
            blurRadius: 2,
          )
        ],
        color: Colors.white, // Warna latar belakang container
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(kWidth / 20),
          topRight: Radius.circular(kWidth / 20),
        ),
      ),
      child: SizedBox(
        height: kWidth * 2,
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // Jumlah kolom dalam grid
            mainAxisSpacing: 30, // Jarak antar item pada sumbu utama
            crossAxisSpacing: 30, // Jarak antar item pada sumbu lintang
            childAspectRatio: .9, // Rasio aspek item
          ),
          shrinkWrap: true,
          children: [ // Menampilkan data makanan sebagai item dalam GridView.
            for (int i = 0; i < makanan.length; i++) ...{
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailPage(makanan: makanan[i]); // Beralih ke halaman detail makanan
                  }));
                },
                child: Container(
                  padding: EdgeInsets.all(kWidth / 50),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(2, 2),
                        spreadRadius: 1,
                        color: Colors.grey.shade500,
                        blurRadius: 3,
                      )
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(kWidth / 50),
                    ),
                  ),
                  child: Column(
                    children: [
                      Image.asset( // Memasukkan gambar makanan
                        makanan[i].pathFoto,
                        fit: BoxFit.fitWidth,
                        height: kWidth / 8,
                      ),
                      SizedBox(
                        height: kWidth / 30,
                      ),
                      Text(
                        makanan[i].nama, // Memasukkan nama makanan
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: kWidth / 30,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              )
            }
          ],
        ),
      ),
    );
  }
}
