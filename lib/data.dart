class Makanan {
  final String pathFoto;
  final String nama;
  final String bahan;
  final String caraMasak;

  Makanan({
    required this.pathFoto,
    required this.nama,
    required this.bahan,
    required this.caraMasak,
  });
}

var makananList = [
  Makanan(
    pathFoto: 'assets/nasgor.png',
    nama: 'Nasi Goreng',
    bahan: '- Nasi Putih \n- Bawang Merah \n- Cabai \n- Kecap',
    caraMasak:
        '1. Terutama haluskan bumbu seperti cabe, bawang merah, bawang putih. \n\n2. Kemudian siapkan nasi putih (biar lebih enak nasinya dingin ya. \n\n3. Setelah bumbu halus sudah siap dan nasi sudah siap, panaskan wajan untuk memasak. Tambahkan mentega/minyak 2 sendok, tunggu sampai panas.) \n\n4. Setelah panas, masukkan bumbu halus, garam, dan penyedap. Gongso sampai berbau sedap, tambahkan saus sambal, kemudian masukkan telur, sambil orak arik telur.',
  ),
  Makanan(
    pathFoto: 'assets/bakso.png',
    nama: 'Bakso',
    bahan:
        '- 1 kg Daging sapi cincang sampai halus \n- 200 gr Tepung tapioka \n- 4 siung bawang putih \n- 2 siung bawang merah \n- 5 siung bawang putih iris tipis lalu goreng sampai kering \n- 5 siung bawang merah iris tipis goreng sampai kering \n- 2 sdt garam \n- 1 bks royko sapi \n- 2 putih telur \n - 200 gr es batu di serut',
    caraMasak:
        '1. Campur semua bahan bisa di giling dg food prosesor atau blender (asal daging sudah di cincang halus). \n\n2. Didihkan air untuk merebus bakso \n\n3. Bentuk bulat menggunakan tangan lalu rebus sampai mengambang. \n\n4. Setelah bakso mengambang tanda sudah matang, angkat dan diamkan selama 5 menitan agar bakso bagian dalam juga matang merata.',
  ),
  Makanan(
    pathFoto: 'assets/sate.png',
    nama: 'Sate Ayam',
    bahan:
        '- 600 gram dada ayam fillet \n- Tusuk sate \n- 150 gram kacang tanah goreng \n- 4 siung bawang putih \n- 2 siung bawang merah \n- 1 sdm merica \n- Garam \n- 100 ml kecap manis',
    caraMasak:
        '1. Potong-potong dada ayam sesuai selera. Remas-remas daging ayam beserta bumbu yang telah dihaluskan, diamkan kurleb 30 menit. \n\n2. Tusuk daging sate kurleb 3-4 potong setiap tusuknya (menurut selera). Panggang di dalam oven dengan suhu 180 derajat Celsius selama kurang lebih 20 menit (hingga matang). Bolak-balik kedua sisinya supaya tidak gosong. Tambahkan kecap manis sebelum dimasukkan ke dalam oven. \n\n3. Setelah matang segera keluarkan dari oven dan sajikan bersama sambal kecap ataupun saus kacang. \n\n4. Setelah bakso mengambang tanda sudah matang, angkat dan diamkan selama 5 menitan agar bakso bagian dalam juga matang merata.',
  ),
  Makanan(
    pathFoto: 'assets/rendang.png',
    nama: 'Rendang',
    bahan:
        '- 2 kg daging rendang \n- 6 buah kelapa diparut diambil pati santannya saja  \n- 2 bungkus bumbu rendang lengkap (1 bungkus utk 1 kg daging) \n- 2 lembar daun kunyit \n- 5 lembar daun jeruk \n- 3 batang sereh \n- Gula, garam, kaldu jamur secukupnya  \n- 100 ml kecap manis',
    caraMasak:
        '1. Persiapkan bahan-bahannya terlebih dahulu. Santan dididihkan, lalu masukkan bumbu halus dan rempah daunnya. \n\n2. Masak sampai meletup-letup sertai santan keluar minyaknya, aduk sampai berwarna kecoklatan. \n\n3. Kecilkan api dan lanjutkan memasak sampai rendang berwarna kehitaman.',
  ),
  Makanan(
    pathFoto: 'assets/gulai.png',
    nama: 'Gulai Sapi',
    bahan:
        '- 1/2 kg daging sapi\n- 600 ml air\n- 2 bngks santan instan\n- Bumbu instan gulai\n- Tambahan garam/kaldu',
    caraMasak:
        '1. Rebus dulu dagingnya sampai empuk/matang\n\n2. lalu masukan air dlm wajan dan isi daging yg sdh matang juga masukan bumbu instan\n\n3. Aduk dan tunggu air sampai mendidih lalu masukan santan sambil tes rasa.',
  ),
  Makanan(
      pathFoto: 'assets/cabeijo.png',
      nama: 'Ayam Cabe Ijo',
      bahan:
          '- 1 ekor ayam kampung\n- 1 sachet bumbu ungkep ayam merk bebas (saya bumbu instan ayam goreng Mama Suka)\n- Sckpnya air utk ungkepan ayam\n- Bahan sambal :\n- 30 buah cabe ijo keriting\n- 10 buah cabe rawit ijo (saya skip)\n- 3 buah bawang merah besar\n- Sckpnya garam\n- Sckpnya penyedap rasa',
      caraMasak:
          '1. Potong ayam sesuai selera (saya ukuran sedang), cuci bersih dan marinasi dg jeruk nipis dan sckpnya garam.\n\n2. Setelah 30 menit, cuci ayam dan ungkep dengan bumbu ungkep dan sckpnya air.\n\n3. Ungkep sampai ayam empuk dan air berkurang.\n\n4. Angkat, tiriskan dan goreng sampai agak kecoklatan.\n\n5. Haluskan semua bahan sambal (saya ulek kasar).\n\n6. Dalam wajan, panaskan 50-60 ml minyak, tumis bumbu halus sampai wangi, koreksi rasa.\n\n7. Masukkan ayam yang tadi digoreng.\n\n8. Aduk rata, angkat dan sajikan.'),
  Makanan(
      pathFoto: 'assets/gado.png',
      nama: 'Gado-gado',
      bahan:
          '- Isian sayur: kacang panjang.toge.bayam.kangkung\n- Secukupnya garam.gula merah.air asem jawa.kecap manis.kacang.cabe rawit.bawang putih udh goreng\n- Pelengkap:tempe goreng',
      caraMasak:
          '1. Rebus air sampai mendidih\n\n2 Masukan sayur, rebus sebentar saja, lalu angkat dan tiriskan\n\n3. Ambil cobek masukan kacang.baput.rawit dan gula merah Ulek sampai halus\n\n4. Perlahan masukan air asem Jawa ulek lagi\n\n5. Jika bumbu sudah halus, maka boleh icip dulu atau langsung beri sayuran secukupnya saja(bisa juga sayuran sudah di tata dalam piring secukupnya saja.lalu siram diatasnya bumbu kacangnya)    \n\n6. Aduk rata bersama bumbu,\n\n7. Masukkan tempe goreng.'),
  Makanan(
    pathFoto: 'assets/udang.png',
    nama: 'Udang Rebus',
    bahan:
        '- 500 gr udang ukuran sedang\n- secukupnya air\n- secukupnya garam, gula\n- kecap asin',
    caraMasak:
        '1. Cuci bersih udang tanpa buang kepala dan sungut.\n\n2. Didihkan air secukupnya di dalam panci tambahkan garam dan gula\n\n3. Masukkan udang, masak cukup sampai matang. Jangan terlalu lama krn udang akan alot dan tidak manis\n\n4. Angkat udang, tiriskan airnya.\n\n5. Sajikan udang bersama campuran kecap asin,bawang putih dan potongan cabe.          ',
  ),
  Makanan(
    pathFoto: 'assets/ayammentega.png',
    nama: 'Ayam Mentega',
    bahan:
        '- 300 gr fillet ayam\n- 1 sdm tepung maezena\n- 1/2 sdt lada bubuk\n- 2 sdm kecap asin\n- 1 bagian bawang bombay, iris\n- 3 siung bawang putih, cincang kasar\n- 2 batang daun bawang\n- Segenggam kacang mede\n- Bahan saos :\n- 2 sdm mentega\n- 2 sdm saos tiram\n- 2 sdm saos tomat\n- 3 sdm kecap manis\n- secukupnya Air',
    caraMasak:
        '1. Potong kotak daging ayam kemudian marinasi dengan tepung maezena, lada bubuk dan kecap asin. Aduk rata dan diamkan selama 30 menit hingga bumbu meresap\n\n2. Panaskan sedikit minyak kemudian tumis hingga berubah warna baru masukkan bawang putih, aduk² kemudian tambahkan air dan bumbu lainnya, masak hingga air menyusut.\n\n3. Masukkan irisan daun bawang masak sebentar. Matikan api dan ayam tumis saos mentega siap dihidangkan ❤    ',
  ),
];
