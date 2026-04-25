# 🎓 SCRIPT UJIAN LISAN (Versi Panjang & Mendetail)
*Catatan: Setiap jawaban di bawah ini dirancang seperti "bercerita" dengan analogi. Jika kamu membaca satu jawaban dengan intonasi santai dan menjelaskan pelan-pelan, satu jawaban bisa memakan waktu 1-2 menit. Jika dosen memintamu menjelaskan beberapa soal sekaligus, kamu pasti bisa mencapai target waktu 5-7 menit dengan mudah.*

---

### SOAL 1: Pengantar Flutter & Keunggulannya
**Cara Menjawab (Baca perlahan dengan intonasi meyakinkan):**
> "Baik Pak/Bu, saya akan menjelaskan tentang Flutter. Sederhananya, Flutter adalah *framework* atau alat pembuat antarmuka aplikasi (UI Toolkit) yang diciptakan oleh Google. Konsep utama yang membuat Flutter sangat populer saat ini adalah kemampuannya sebagai *framework Cross-Platform*. Maksud dari *cross-platform* di sini adalah kita hanya perlu menulis satu sumber kode (*Single Codebase*) menggunakan bahasa pemrograman Dart, dan kode tersebut bisa di-*compile* atau diubah menjadi aplikasi Android sekaligus aplikasi iOS. Dulu, sebelum ada Flutter, kalau perusahaan mau bikin aplikasi, mereka harus bayar dua tim *programmer* yang berbeda (satu pakai Java/Kotlin untuk Android, satu pakai Swift untuk Apple). Dengan Flutter, ini sangat menghemat waktu, tenaga, dan biaya.
> 
> Ada tiga keunggulan utama yang saya rasakan selama memakai Flutter. Yang pertama adalah **Hot Reload**. Ini fitur yang sangat memanjakan *developer*. Dulu kalau kita ngoding dan mau lihat hasilnya, butuh waktu *loading* atau *build* berpuluh-puluh detik. Dengan *Hot Reload*, saat kita ubah warna atau ukuran teks di kode lalu kita *save*, detik itu juga perubahannya langsung muncul di layar HP. Kedua, **Single Codebase** seperti yang saya jelaskan tadi. Dan ketiga adalah **Tampilan yang Konsisten**. Flutter itu tidak meminjam komponen bawaan HP (seperti tombol asli Android/iOS), melainkan dia menggambar sendiri (*render*) layarnya menggunakan *engine* grafis. Hasilnya? Aplikasi kita akan terlihat 100% sama persis baik saat dibuka di HP Samsung keluaran lama maupun di iPhone terbaru. Contoh aplikasi yang sangat cocok dibangun pakai Flutter adalah aplikasi E-Commerce atau Kasir Digital, di mana tampilannya harus seragam di semua *device* dan pengembangannya butuh kecepatan tinggi."

---

### SOAL 2: "Everything is a Widget" & Widget Tree
**Cara Menjawab:**
> "Di dalam Flutter, ada satu prinsip fundamental yang berbunyi: *'Everything is a Widget'* atau 'Segalanya adalah Widget'. Kalau mau dibayangkan, widget itu seperti balok-balok mainan Lego. Semua yang kita lihat di layar aplikasi itu adalah widget. Tombol adalah widget, teks adalah widget, gambar adalah widget. Bahkan, spasi kosong untuk memberi jarak atau penataan posisi ke tengah (*Center*) pun dihitung sebagai widget. 
> 
> Nah, balok-balok Lego ini tidak mungkin berdiri sendiri, mereka harus disusun dari yang paling besar ke yang paling kecil. Susunan inilah yang dinamakan **Widget Tree** (Pohon Widget) atau hierarki. Bentuknya menyerupai silsilah keluarga, ada induk (Bapak) dan ada anak (*Child/Children*). 
> 
> Sebagai contoh praktis, kalau kita mau membuat halaman utuh, paling luar kita harus memakai widget induk bernama `Scaffold` yang bertindak sebagai kanvas kosong atau latar putih aplikasinya. `Scaffold` ini punya anak bernama `AppBar` (untuk bagian atas) dan `Body` (untuk isi tengah). Kalau di dalam `Body` kita mau menyusun teks dari atas ke bawah, kita taruh widget `Column`. Nah, `Column` ini akan bertindak sebagai induk lagi yang memiliki banyak anak (*children*), misalnya anak pertama adalah widget `Text` untuk judul, anak kedua adalah `SizedBox` untuk jarak, dan anak ketiga adalah `ElevatedButton` untuk tombol. Begitulah cara kita merangkai satu layar penuh hanya dengan menumpuk widget demi widget."

---

### SOAL 3: Dasar Bahasa Dart
**Cara Menjawab:**
> "Bahasa pemrograman yang menggerakkan Flutter adalah Dart. Untuk menguasai Dart, kita harus paham komponen dasarnya. Pertama soal **Variabel dan Tipe Data**, ini ibarat kotak penyimpanan. Kalau kotaknya khusus untuk angka bulat, kita pakai `int` (integer). Kalau khusus teks, kita pakai `String`. Kalau untuk menyimpan nilai *Benar/Salah*, kita pakai `bool` (*boolean*). Ada juga `double` untuk angka desimal, dan `List` kalau kita mau menyimpan banyak data dalam satu keranjang (seperti *array*).
> 
> Kedua adalah **Operator**. Sama seperti matematika, kita punya operator aritmatika seperti plus `+` dan minus `-`. Lalu ada operator perbandingan seperti `==` (untuk mengecek apakah isinya sama persis, biasanya dipakai saat mengecek kebenaran password), dan ada operator logika seperti `&&` (DAN) serta `||` (ATAU).
> 
> Ketiga adalah **Control Flow** atau alur program. Yang paling sering dipakai adalah logika *if-else*. Misalnya: *'Jika (if) password lebih dari 8 karakter, maka berhasil, selain itu (else), maka gagal'*. Kita juga mengenal *for-loop* untuk perulangan, misalnya mau nampilin data produk sebanyak 100 kali.
> 
> Terakhir adalah **Function** (Fungsi). Fungsi ini ibarat mesin atau resep masakan. Kita bikin kodenya satu kali, lalu kita bungkus pakai nama tertentu. Kapanpun kita butuh aksi tersebut, kita tinggal panggil nama fungsinya tanpa harus capek nulis ulang kodenya dari nol. Contoh sederhananya fungsi matematika: `int hitungTotal(int harga, int ongkir) { return harga + ongkir; }`."

---

### SOAL 4: Class, Object, dan Inheritance
**Cara Menjawab:**
> "Pak/Bu, dalam *Object-Oriented Programming* (OOP) di Dart, **Class** itu ibarat *Blueprint* (cetak biru) atau cetakan kue. Dia adalah konsep rancangannya. Sedangkan **Object** adalah hasil nyata dari cetakan tersebut (kuenya yang sudah jadi). 
> 
> Di dalam sebuah *Class*, pasti memiliki dua hal: **Property** dan **Method**. *Property* atau atribut adalah data yang disimpan (misalnya kalau class-nya adalah 'Mobil', maka *property*-nya adalah warna, jumlah roda, merek). Sedangkan *Method* adalah aksi atau kelakuan dari class tersebut (misalnya 'maju()', 'rem()', atau 'belok()').
> 
> Selain itu ada yang namanya **Constructor**. Ini adalah perintah atau fungsi yang otomatis dipanggil PERTAMA KALI saat mobil atau object itu dirakit. Biasanya *constructor* dipakai untuk memasukkan data awal, misal saat mobil diciptakan, kita langsung tentukan warnanya merah.
> 
> Konsep lain yang tak kalah penting adalah **Inheritance** atau pewarisan, menggunakan perintah `extends`. Ini sangat berguna. Analoginya: Saya punya *Class* bernama 'Kendaraan' yang punya mesin. Lalu saya mau bikin *Class* baru bernama 'Mobil'. Saya tidak perlu nulis ulang kode soal mesin dari awal. Saya cukup bilang `class Mobil extends Kendaraan`, otomatis si Mobil akan mewarisi semua sifat, data, dan kelakuan dari bapaknya (Kendaraan). Ini membuat kode sangat rapi dan hemat."

---

### SOAL 5: StatelessWidget vs StatefulWidget
**Cara Menjawab:**
> "Di Flutter, ada dua jenis widget utama: **Stateless** dan **Stateful**. Perbedaannya sangat mendasar. 
> 
> **StatelessWidget** itu sifatnya mati, statis, atau kaku. Artinya, sejak dia pertama kali digambar di layar HP, bentuk dan isinya tidak akan pernah bisa berubah lagi oleh interaksi apapun. Kita pakai ini untuk hal-hal yang murni dekorasi, seperti nulis judul aplikasi pakai widget `Text`, atau nampilin logo perusahaan pakai widget `Icon` atau `Image`.
> 
> Berbeda dengan **StatefulWidget**. Dia ini sifatnya hidup dan dinamis. Dia punya 'memori' atau *State*. Ketika *user* melakukan sesuatu (misalnya memencet tombol layar, atau mengetik di keyboard), tampilannya bisa berubah seketika. Kapan kita pakai ini? Ya saat kita bikin form login, atau saat bikin tombol 'Like' yang kalau diklik angkanya nambah dari 0 jadi 1.
> 
> Pertanyaannya, bagaimana cara si *Stateful* ini tahu kalau dia harus berubah bentuk? Jawabannya ada pada fungsi **`setState()`**. Fungsi ini ibarat kita mencet tombol alarm. Ketika *user* ngeklik tombol nambah angka, kita masukkan variabel penambahannya ke dalam fungsi `setState()`. Saat fungsi ini dipanggil, Flutter akan mendengar *alarm* tersebut, dan langsung memicu perintah `build` ulang untuk me-render atau menggambar ulang bagian layar tersebut dengan angka yang baru."

---

### SOAL 6: Basic Widget dan Layout Widget
**Cara Menjawab:**
> "Di Flutter kita membagi fungsi widget menjadi beberapa kategori. Ada yang namanya **Basic Widget** (widget dasar pembentuk konten). Contohnya: `Text` untuk menulis kalimat, `Image` untuk memunculkan foto, `Icon` untuk memunculkan simbol grafis, `ElevatedButton` untuk tombol yang ada efek timbulnya, dan `Container` yang merupakan kotak serbaguna yang bisa kita kasih warna, bingkai, atau bayangan (*shadow*).
> 
> Tapi, widget dasar tadi akan berantakan kalau tidak diatur posisinya. Di sinilah **Layout Widget** bekerja. Ada `Row` untuk menyusun benda berjejer ke samping secara horizontal. Ada `Column` untuk menyusun benda berjejer ke bawah secara vertikal. Ada `Stack` untuk menumpuk benda ke depan (seperti tumpukan kertas), dan `Padding` untuk memberi jarak ruang di bagian dalam supaya tidak mepet pinggir.
> 
> Khusus untuk `Row` dan `Column`, kita butuh cara untuk mengatur perataannya. Kita menggunakan parameter **MainAxisAlignment** (Sumbu Utama). Kalau di `Row`, sumbu utamanya itu horizontal (Kiri-Kanan). Jadi kalau kita set `MainAxisAlignment.center`, elemennya akan ke tengah layar secara kiri-kanan. Sedangkan **CrossAxisAlignment** adalah Sumbu Silang/Lawan Arah. Kalau di `Row`, sumbu silangnya adalah Vertikal (Atas-Bawah). Jadi kita bisa men-setting elemen agar rata bawah atau rata atas."

---

### SOAL 7: Input Widget dan Validasi Form
**Cara Menjawab:**
> "Bagian paling penting dalam aplikasi adalah menerima data dari *user*, misalnya halaman Login. Di Flutter, untuk membuat kotak isian, kita menggunakan widget bernama **`TextFormField`**. Kenapa pakai yang ada tulisan 'Form'-nya? Karena dia memiliki bawaan fungsi keamanan yang kita sebut validasi.
> 
> Alurnya seperti ini: Pertama, kita bungkus semua isian (email dan password) di dalam sebuah widget raksasa bernama **`Form`**. Nah, si `Form` ini kita kasih sebuah 'KTP' atau remot kontrol yang bernama **`GlobalKey<FormState>`**. Apa gunanya kunci ini? Gunanya agar nanti saat tombol "Login" ditekan, kita nggak perlu ngecek isian email dan password satu-satu secara manual. Kita cukup tekan remot kontrolnya: `key.currentState!.validate()`, maka form akan mengecek semua isian secara serentak.
> 
> Lalu bagaimana cara dia ngecek? Di dalam tiap `TextFormField` ada perintah bernama **`validator`**. Di sinilah kita tulis logikanya. Misalnya untuk email, kita tulis logika: *'Jika isian kosong, maka kembalikan pesan Email Tidak Boleh Kosong. Jika isian tidak mengandung karakter @, maka kembalikan pesan Format Email Salah'*. Pengecekan ini terjadi secara instan di sisi *frontend* tanpa perlu menunggu proses loading ke *server*, sehingga sangat menghemat data dan pengalaman pengguna (UX) jadi sangat cepat."

---

### SOAL 8: Navigasi Antar Halaman
**Soal:** Navigator push, pop, pushReplacement, named routes.
**Cara Menjawab:**
> "Konsep perpindahan halaman di aplikasi *mobile* itu seperti tumpukan buku, Pak/Bu. Dan alat untuk menumpuk buku itu di Flutter disebut **`Navigator`**.
> 
> Ada tiga metode utama:
> Pertama, **`Navigator.push`**. Ini ibarat kita menaruh buku baru di atas buku lama. Kita pakai ini kalau alurnya berkesinambungan. Misalnya *user* sedang di halaman Daftar Produk, lalu dia klik produk A, maka aplikasi akan menumpuk (push) halaman Detail Produk A di atas layarnya. Ingat, layar sebelumnya masih hidup di bawah tumpukan, sehingga *user* bisa memencet tombol Back di HP-nya untuk kembali.
> 
> Kedua adalah tombol 'Back' itu sendiri, bahasa programnya adalah **`Navigator.pop`**. Ini perintah untuk membuang buku paling atas agar halaman di bawahnya terlihat lagi.
> 
> Ketiga adalah **`Navigator.pushReplacement`** atau *Push and Remove*. Ini fungsinya menumpuk buku baru, TAPI sekaligus membuang/menghancurkan buku yang lama di bawahnya. Kapan kita pakai ini? Paling sering di halaman Login. Kalau *user* sudah sukses login, kita lempar dia ke layar Dashboard pakai *pushReplacement*. Tujuannya apa? Agar riwayat halaman Login hancur, sehingga kalau *user* iseng menekan tombol 'Back' di HP-nya, dia tidak akan bisa kembali (menyusup) ke form Login lagi tanpa *Logout* secara resmi.
> 
> Oh ya, supaya penulisan kode navigasi tidak panjang dan pusing, kita sangat disarankan memakai **Named Routes**. Jadi kita daftarkan semua halaman di awal dengan nama-nama pendek seperti alamat website (contoh: `'/home'`, `'/login'`). Jadi pas memanggilnya, kodenya jauh lebih pendek, elegan, dan minim salah ketik."

---

### SOAL 9: Konsep State dalam Aplikasi
**Cara Menjawab:**
> "Pak/Bu, kalau mau ditanya apa "nyawa" dari aplikasi Flutter, jawabannya adalah **State**. State adalah data atau informasi yang dibaca oleh memori pada saat itu juga, yang sedang mempengaruhi apa yang dilihat oleh *user* di layar. Contoh paling mudah: saat *user* mengetik di kolom password, setiap huruf yang ditambahkan itu adalah *state*. Contoh lain: angka 3 di ikon keranjang belanja adalah *state*. Atau status berputarnya animasi loading adalah *state*.
> 
> Dalam Flutter, *state* ini dipisah menjadi dua level. 
> Level pertama namanya **Ephemeral State** (State Lokal). Ini adalah data yang sangat sepele dan cuma dipakai di dalam ruangan/halaman itu saja. Contohnya: *toggle* mata (sembunyikan/tampilkan password). Apakah halaman Dashboard perlu tahu password kita lagi disembunyikan atau tidak? Tentu tidak. Karena cuma dibutuhkan di halaman itu, kita cukup mengelolanya pakai `setState()` biasa.
> 
> Level kedua namanya **Application State** (State Global). Nah, ini adalah data penting yang sifatnya dipakai secara keroyokan oleh berbagai halaman di dalam aplikasi. Contohnya: Data Profil User yang lagi login (namanya, fotonya). Nama *user* ini harus bisa muncul di halaman *Home*, di halaman *Setting*, dan di halaman *Checkout*. Ini adalah state global yang harus dibagikan secara pintar ke seluruh pelosok aplikasi."

---

### SOAL 10: State Management Sederhana
**Cara Menjawab:**
> "Melanjutkan jawaban soal nomor 9 tadi, bagaimana cara kita membagikan data Profil User ke banyak halaman? Kenapa kita nggak pakai `setState()` aja? Jawabannya: karena bakal terjadi bencana kode yang disebut **'Prop Drilling'**.
> 
> Apa itu *Prop Drilling*? Bayangkan kita punya Widget A (induk paling atas) yang punya data Nama User. Widget A ini punya anak Widget B, B punya anak C, C punya anak D, dan D punya anak E. Padahal yang butuh data Nama User cuma si Widget E di ujung bawah. Kalau kita pakai cara tradisional, kita terpaksa harus 'mengoper' paketan data itu dari A ke B, lalu B ke C, C ke D, baru sampai ke E. Kasihan si B, C, dan D yang kodenya jadi kotor menerima paket data yang padahal tidak mereka pakai sama sekali. Ini sangat merepotkan.
> 
> Maka dari itu, hadirlah solusi yang bernama **State Management** (seperti Provider, GetX, atau Riverpod). Secara sederhana, konsep kerja mereka seperti ini: Data Profil User tadi tidak lagi dipegang oleh Widget A. Melainkan kita pindahkan ke sebuah "Gudang Tersendiri" atau "Papan Pengumuman" di luar struktur Widget. 
> 
> Hasilnya? Sangat ajaib. Kalau Widget E butuh Nama User, dia tidak perlu minta ke D, C, atau B. Widget E tinggal "menengok" dan menarik data langsung ke Gudang tersebut. Kode menjadi sangat bersih, efisien, dan kalau ada perubahan nama user di Gudang, maka secara instan seluruh Widget yang memantau gudang tersebut akan langsung ter-update secara serentak. Itulah mengapa State Management adalah *skill* wajib untuk aplikasi profesional."
