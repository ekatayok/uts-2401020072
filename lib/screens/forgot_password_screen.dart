import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/custom_widgets.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  bool _isLoading = false;

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  void _sendResetLink() async {
    // Memeriksa apakah form sudah valid (email terisi dan format benar)
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });

      // Simulasi proses ke server (loading selama 2 detik)
      await Future.delayed(const Duration(seconds: 2));

      if (!mounted) return;
      setState(() {
        _isLoading = false;
      });

      // Menampilkan pesan sukses bahwa link berhasil dikirim
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Link reset telah dikirim ke email Anda', style: GoogleFonts.inter(color: Colors.white)), 
          backgroundColor: Colors.green
        )
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lupa Password', style: GoogleFonts.manrope(fontWeight: FontWeight.bold, color: const Color(0xFF004253))),
        backgroundColor: Colors.white, elevation: 0, iconTheme: const IconThemeData(color: Color(0xFF004253)),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24.0),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 448),
              child: Form(
                key: _formKey,
                child: Container(
                  padding: const EdgeInsets.all(32),
                  decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: const Color(0xFFBFC8CC).withOpacity(0.1)),
                    boxShadow: const [BoxShadow(color: Color(0x0F191C1E), blurRadius: 24, offset: Offset(0, 8))],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Reset Password Anda', style: GoogleFonts.manrope(fontSize: 24, fontWeight: FontWeight.w800, color: const Color(0xFF004253), letterSpacing: -0.5)),
                      const SizedBox(height: 12),
                      Text('Masukkan email terdaftar untuk menerima instruksi reset password.', style: GoogleFonts.inter(fontSize: 14, color: const Color(0xFF40484C))),
                      const SizedBox(height: 32),
                      CustomTextField(
                        label: 'EMAIL', 
                        hint: 'Masukkan email', 
                        prefixIcon: Icons.email_outlined,
                        controller: _emailController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Email tidak boleh kosong';
                          }
                          final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
                          if (!emailRegex.hasMatch(value)) {
                            return 'Format email tidak valid';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 32),
                      GradientButton(
                        text: 'Kirim Instruksi', 
                        isLoading: _isLoading,
                        onPressed: _sendResetLink,
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: double.infinity,
                        child: TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text('Kembali ke Login', style: GoogleFonts.inter(fontWeight: FontWeight.bold, color: const Color(0xFF004253))),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
