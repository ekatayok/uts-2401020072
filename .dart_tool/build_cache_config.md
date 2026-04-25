# 🗣️ SCRIPT DEMO PROJECT (Lengkap dengan Soal, Cara Bicara & Tips Gestur)

### 1. Arsitektur & Struktur Project
**Soal:** "Jelaskan struktur folder project Anda dan alasan pembagian tersebut."
👉 **Lokasi Kode:** Buka panel *Explorer* (kiri), buka folder `lib/`.
🗣️ **Cara Menjelaskan (Baca ini):**
> "Baik Pak/Bu, di project ini saya memisahkan folder di dalam `lib` dengan konsep *Separation of Concerns* supaya rapi dan gampang di-maintain.
> - Folder **`screens/`** isinya halaman utama seperti Login dan Dashboard.
> - Folder **`widgets/`** isinya komponen UI kayak Tombol dan TextField yang bisa dipakai ulang.
> - Folder **`utils/`** untuk simpan warna tema global.
> - Dan **`main.dart`** sebagai pengatur navigasinya."
💡 **Tips Gestur/Sikap:** Buka foldernya satu per satu dengan tenang. Tatap mata dosen saat menjelaskan fungsi tiap folder (jangan terus-menerus menatap layar) agar terlihat meyakinkan dan benar-benar hafal strukturnya.

---

### 2. Widget Tree Halaman Login
**Soal:** "Gambarkan atau jelaskan hierarki widget pada halaman login Anda. Widget mana yang Stateless dan mana yang Stateful? Mengapa?"
👉 **Lokasi Kode:** Buka `login_screen.dart`. Tunjuk baris **5** (`StatefulWidget`) lalu scroll ke baris **73** (mulai `Stack`).
🗣️ **Cara Menjelaskan:**
> "Halaman Login ini menggunakan **StatefulWidget**, karena halamannya dinamis. Dia butuh merubah tampilan saat loading atau saat nampilin error merah.
> Untuk hierarkinya: paling luar ada `Scaffold`, lalu `Stack` buat naruh background lingkaran. Lalu ada `ScrollView`, masuk ke `Form`, lalu ke `CustomTextField` dan `GradientButton`.
> Nah, untuk TextField dan Button-nya sendiri itu bentuknya **Stateless**, karena tugas mereka cuma nampilin desain dasar tanpa ngatur state yang rumit."
💡 **Tips Gestur/Sikap:** Gunakan kursor mouse untuk menyorot blok `Scaffold` lalu turun perlahan. Tekankan intonasi Anda pada kata 'Stateless' dan 'Stateful' karena ini merupakan fondasi utama pemrograman Flutter.

---

### 3. Alur Validasi Form
**Soal:** "Tunjukkan di kode Anda bagaimana proses validasi email dan password berjalan saat tombol login ditekan. Apa peran GlobalKey<FormState> di sini?"
👉 **Lokasi Kode:** Buka `login_screen.dart`. Tunjuk baris **12** (`_formKey`), baris **28** (`validate()`), lalu scroll ke baris **128** (Email) & **144** (Password).
🗣️ **Cara Menjelaskan:**
> "Peran `GlobalKey` di baris 12 ini ibarat 'remot kontrol' untuk mengecek semua inputan sekaligus.
> Saat tombol ditekan, program menjalankan fungsi `validate()` di baris 28. Fungsi ini akan memicu aturan di baris 128 untuk memastikan email harus pakai '@' dan format '.com' dengan Regex. Lalu di baris 144 dia ngecek password harus minimal 8 karakter dan mengandung kombinasi angka dan huruf."
💡 **Tips Gestur/Sikap:** Praktekkan langsung di emulator! Ketik email yang salah format (misal tanpa '@'), lalu klik login agar teks peringatan merah muncul. Saat error muncul di layar, tunjuk kode Regex di Visual Studio Code. Ini akan sangat memukau dosen.

---

### 4. Pengelolaan State
**Soal:** "Tunjukkan bagian kode yang mengelola state isLoading, errorMessage, dan data user. Bagaimana UI tahu harus berubah saat state tersebut berubah? Widget mana yang akan ter-update?"
👉 **Lokasi Kode:** Buka `login_screen.dart`, tunjuk baris **29** (fungsi `setState()`).
🗣️ **Cara Menjelaskan:**
> "Saya mengelola state menggunakan fungsi `setState()`. Misalnya pas proses login jalan, saya ubah `_isLoading = true;` di baris ini.
> Begitu `setState` dipanggil, Flutter otomatis tahu dan akan menggambar ulang (*re-render*) layarnya.
> Yang ter-update adalah widget Tombol yang berubah jadi animasi loading, dan kalau error, state `_errorMessage` akan memunculkan tulisan merah di atas form."
💡 **Tips Gestur/Sikap:** Tekankan kata *'re-render'* atau 'menggambar ulang'. Ini adalah *magic word* yang disukai dosen karena menunjukkan Anda sangat paham *Lifecycle UI* di Flutter.

---

### 5. Navigasi Antar Halaman
**Soal:** "Jelaskan strategi navigasi Anda. Mengapa logout menggunakan pushAndRemoveUntil dan bukan push biasa? Apa yang terjadi dengan navigation stack?"
👉 **Lokasi Kode:** Buka `dashboard_screen.dart`, tunjuk baris **9** (`pushNamedAndRemoveUntil`).
🗣️ **Cara Menjelaskan:**
> "Untuk navigasi biasa saya pakai *Named Routes*. Tapi khusus untuk **Logout**, saya pakai `pushNamedAndRemoveUntil` seperti di baris 9 ini.
> Alasannya keamanan, Pak/Bu. Fungsi ini akan menghapus semua riwayat tumpukan memori atau *Navigation Stack* sampai bersih. Jadi pas user udah kembali ke layar Login, mereka nggak bisa iseng mencet tombol 'Back' di HP untuk menyusup masuk lagi ke Dashboard."
💡 **Tips Gestur/Sikap:** Lakukan demo logout langsung, lalu *coba tekan tombol 'Back' di HP/Emulator*. Tunjukkan ke dosen bahwa aplikasinya benar-benar keluar atau tertutup, tidak kembali ke Dashboard. Ini bukti konkret kodingan Anda efektif!

---

### 6. Lifecycle dan Resource Management
**Soal:** "Di StatefulWidget Anda, resource apa yang Anda buat di initState dan Anda bersihkan di dispose? Apa akibatnya jika lupa dispose?"
👉 **Lokasi Kode:** Buka `login_screen.dart`, tunjuk baris **21** (fungsi `dispose()`).
🗣️ **Cara Menjelaskan:**
> "Di halaman ini saya membuat resource `TextEditingController` untuk menangkap inputan email dan password.
> Resource ini wajib saya bersihkan di metode `dispose()` di baris 21 ini saat halamannya ditutup.
> Kalau saya lupa memanggil *dispose*, akibatnya akan terjadi **Memory Leak**. Controllernya akan terus hidup dan memakan RAM HP meskipun aplikasinya sudah pindah halaman, yang lama-lama bikin HP lemot."
💡 **Tips Gestur/Sikap:** Saat menyebutkan kata 'Memory Leak', buat nada bicara Anda sedikit lebih serius. Ini membuktikan Anda adalah programmer yang peduli pada *performa* dan *best practice*, bukan sekadar membuat aplikasi yang "asal jalan".

---

### 7. Responsivitas UI
**Soal:** "Jalankan aplikasi Anda dalam orientasi landscape atau ukuran layar berbeda. Bagaimana layout Anda beradaptasi? Widget apa yang berperan di sini?"
👉 **Lokasi Kode:** Buka `login_screen.dart`, tunjuk baris **78** (`SingleChildScrollView`) dan baris **81** (`ConstrainedBox`).
🗣️ **Cara Menjelaskan:**
> "Aplikasi ini sudah responsif. Ada dua widget utama yang berperan:
> Pertama, `SingleChildScrollView` di baris 78, fungsinya agar layar bisa di-scroll saat *keyboard* HP muncul, jadi halamannya nggak nabrak dan error garis kuning-hitam.
> Kedua, `ConstrainedBox` di baris 81. Ini saya pakai supaya kalau aplikasinya dibuka di Tablet atau Layar Lebar, formnya dibatasi lebar maksimal 448 pixel. Jadi formnya tetap rapi dan proporsional di tengah, nggak melar jelek menutupi seluruh layar."
💡 **Tips Gestur/Sikap:** Secara interaktif, buka keyboard di emulator (untuk demo scroll) ATAU tarik ujung jendela browser/emulator untuk memperlebar layarnya secara *live*. Biarkan dosen melihat langsung form Anda tidak rusak saat di-resize.

---

### 8. Error Handling & UX
**Soal:** "Bagaimana aplikasi Anda merespons ketika user memasukkan email salah? Ketika password kurang dari 8 karakter? Ketika user menekan tombol login dua kali secara cepat?"
👉 **Lokasi Kode:** Buka `login_screen.dart`, tunjuk baris **63** (`SnackBar`).
🗣️ **Cara Menjelaskan:**
> "Kalau formatnya salah, validasi langsung menolak seketika dan memunculkan teks merah di bawah inputan tanpa loading.
> Kalau formatnya betul tapi email/pass salah, saya ubah statenya dan memunculkan peringatan serta `SnackBar` warna merah seperti di baris 63 ini.
> Dan kalau user iseng pencet tombol berkali-kali secara cepat, *request* ganda tersebut akan dicegah oleh state `_isLoading`. Begitu diklik sekali, tombol ngunci jadi animasi loading, jadi klik selanjutnya akan diabaikan."
💡 **Tips Gestur/Sikap:** Lakukan demonstrasi menekan tombol login berkali-kali dengan cepat (*spam click*). Tunjukkan dengan bangga bahwa animasi loadingnya stabil dan aplikasi tidak nge-bug/crash.

---

### 9. Kode yang Dapat Dipelihara
**Soal:** "Tunjukkan satu bagian kode yang menurut Anda paling baik, dan satu bagian yang jika ada waktu lebih akan Anda refactor. Jelaskan alasannya."
👉 **Lokasi Kode:** Buka folder `widgets/`, lalu buka file `login_screen.dart` baris **40** (`if (_emailController.text == 'ekatayok@gmail.com')`).
🗣️ **Cara Menjelaskan:**
> "Bagian paling baik menurut saya adalah file *Custom Widget* yang saya buat terpisah. Kodenya sangat bersih dan tombolnya bisa di-reuse di halaman mana saja.
> Tapi kalau ada waktu untuk di-refactor, saya akan memperbaiki bagian pengecekan login di baris 40 ini. Saat ini email (ekatayok@gmail.com) dan password-nya masih *hardcoded* dan kecampur di dalam file UI. Harusnya logika ini dipisah ke *Service Layer* tersendiri agar UI murni fokus ke tampilan saja."
💡 **Tips Gestur/Sikap:** Menjawab dengan rendah hati (mengakui kekurangan kode *hardcoded* dan tahu solusinya) justru akan menaikkan nilai Anda. Ini menunjukkan kedewasaan teknis Anda sebagai *Software Engineer*.

---

### 10. Refleksi & Pengembangan Lanjut
**Soal:** "Jika diberi waktu tambahan 1 minggu, fitur apa yang akan Anda tambahkan, dan konsep dari pertemuan berikutnya (6, 7) mana yang akan Anda gunakan?"
👉 **Lokasi Kode:** (Tidak ada, cukup dijawab secara lisan).
🗣️ **Cara Menjelaskan:**
> "Kalau dikasih waktu 1 minggu lagi, pertama saya akan menyambungkan form ini ke API/Database nyata agar login-nya *real*.
> Kedua, saya akan menambahkan fitur 'Remember Me' menggunakan `SharedPreferences` biar user nggak perlu ngetik ulang tiap buka app.
> Terakhir, saya mau pakai *State Management* seperti Provider agar aliran datanya lebih pro dan nggak cuma bergantung pada `setState`."
💡 **Tips Gestur/Sikap:** Jawab poin ini dengan intonasi meyakinkan dan tersenyum. Sebutkan istilah teknis (*Provider*, *SharedPreferences*, *REST API*) dengan fasih.

---

### 11. Folder Models (user_model.dart)
**Soal (Jaga-jaga):** "Untuk apa folder models dan file `user_model.dart` itu dibuat padahal aplikasinya belum pakai database nyata?"
👉 **Lokasi Kode:** Buka `lib/models/user_model.dart`.
🗣️ **Cara Menjelaskan:**
> "Folder models ini saya siapkan sebagai kerangka data objeknya, Pak/Bu. Di dalamnya ada `user_model.dart` yang berisi *blueprint* untuk menyimpan data nama dan email.
> Tujuannya untuk *Future-Proofing* (persiapan ke depan). Jadi nanti kalau aplikasinya sudah disambung ke API atau Database beneran, data JSON dari server bisa langsung dipetakan menjadi objek `UserModel` ini, supaya kodenya lebih aman (*Type-Safe*) dan menghindari error Typo dari pemanggilan map biasa."
💡 **Tips Gestur/Sikap:** Tekankan istilah '*Future-Proofing*' (anti-ketinggalan zaman) dan '*Type-Safe*'. Istilah ini berbobot berat dan dijamin membuat dosen kagum dengan wawasan arsitektur Anda.
