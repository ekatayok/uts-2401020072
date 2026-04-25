import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/login_screen.dart';
import 'screens/dashboard_screen.dart';
import 'screens/forgot_password_screen.dart';
import 'utils/app_colors.dart';

void main() => runApp(const EkatayokApp());

class EkatayokApp extends StatelessWidget {
  const EkatayokApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ekatayok App',
      // Menyembunyikan banner "Debug" di pojok kanan atas
      debugShowCheckedModeBanner: false,
      
      // Konfigurasi tema global aplikasi (Warna dasar dan Font)
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primary,
          primary: AppColors.primary,
        ),
        scaffoldBackgroundColor: AppColors.background,
        textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme),
      ),
      
      // Rute pertama yang dijalankan saat aplikasi dibuka adalah halaman Login ('/')
      initialRoute: '/',
      
      // Mendaftarkan 3 buah Named Routes sesuai dengan ketentuan rubrik ujian
      routes: {
        '/': (context) => const LoginScreen(),
        '/forgot_password': (context) => const ForgotPasswordScreen(),
        '/dashboard': (context) => const DashboardScreen(),
      },
    );
  }
}
