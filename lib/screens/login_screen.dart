import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/custom_widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _isPasswordVisible = false;
  bool _isLoading = false;
  String? _errorMessage;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _login() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
        _errorMessage = null;
      });

      // Simulasi proses ke server (loading selama 2 detik)
      await Future.delayed(const Duration(seconds: 2));

      if (!mounted) return;

      // Mengecek apakah email dan password sesuai dengan data hardcoded
      if (_emailController.text == 'ekatayok@gmail.com' && _passwordController.text == 'Bali2026') {
        setState(() {
          _isLoading = false;
        });
        
        // Tampilkan pesan sukses menggunakan Snackbar
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Login Berhasil', style: TextStyle(color: Colors.white)), backgroundColor: Colors.green)
        );
        
        // Pindah ke Dashboard jika sukses dan bawa data nama user
        Navigator.pushReplacementNamed(
          context, 
          '/dashboard',
          arguments: 'Ekatayok',
        );
      } else {
        setState(() {
          _isLoading = false;
          _errorMessage = 'Email atau password salah';
        });
        
        // Tampilkan pesan error menggunakan Snackbar
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(_errorMessage!), backgroundColor: Colors.red)
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BgCircle(top: -50, right: -50, size: 400, color: Color(0x7DCCE7EC)),
          const BgCircle(bottom: -50, left: -50, size: 300, color: Color(0x66B7EAFF)),
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 448),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // LOGO & HEADER
                    Column(
                      children: [
                        Container(
                          width: 80, height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [BoxShadow(color: const Color(0xFF004253).withOpacity(0.1), blurRadius: 20, offset: const Offset(0, 10))],
                          ),
                          child: ClipRRect(borderRadius: BorderRadius.circular(16), child: Image.asset('assets/images/logo.png', fit: BoxFit.cover)),
                        ),
                        const SizedBox(height: 16),
                        Text('Ekatayok App', style: GoogleFonts.manrope(fontSize: 30, fontWeight: FontWeight.w800, color: const Color(0xFF004253), letterSpacing: -0.5)),
                        const SizedBox(height: 4),
                        Text('PT Maju Mundur Jaya', style: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w500, color: const Color(0xFF40484C), letterSpacing: 1.5)),
                      ],
                    ),
                    const SizedBox(height: 40),

                    // FORM CONTAINER
                    Form(
                      key: _formKey,
                      child: Container(
                        padding: const EdgeInsets.all(32),
                        decoration: BoxDecoration(
                          color: Colors.white, borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: const Color(0xFFBFC8CC).withOpacity(0.1)),
                          boxShadow: const [BoxShadow(color: Color(0x0F191C1E), blurRadius: 24, offset: Offset(0, 8))],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (_errorMessage != null)
                              Padding(
                                padding: const EdgeInsets.only(bottom: 16),
                                child: Text(_errorMessage!, style: const TextStyle(color: Colors.red, fontSize: 13)),
                              ),
                            CustomTextField(
                              label: 'EMAIL', 
                              hint: 'Masukkan email anda', 
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
                            const SizedBox(height: 24),
                            CustomTextField(
                              label: 'PASSWORD', hint: '••••••••', prefixIcon: Icons.lock_outline,
                              isPassword: true, obscureText: !_isPasswordVisible,
                              controller: _passwordController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Password tidak boleh kosong';
                                }
                                if (value.length < 8) {
                                  return 'Password minimal 8 karakter';
                                }
                                final hasLetter = value.contains(RegExp(r'[a-zA-Z]'));
                                final hasNumber = value.contains(RegExp(r'[0-9]'));
                                if (!hasLetter || !hasNumber) {
                                  return 'Password harus mengandung huruf dan angka';
                                }
                                return null;
                              },
                              onToggleObscure: () => setState(() => _isPasswordVisible = !_isPasswordVisible),
                            ),
                            const SizedBox(height: 12),
                            Align(
                              alignment: Alignment.centerRight,
                              child: GestureDetector(
                                onTap: () => Navigator.pushNamed(context, '/forgot_password'),
                                child: Text('Lupa Password?', style: GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w600, color: const Color(0xFF004253), letterSpacing: -0.2)),
                              ),
                            ),
                            const SizedBox(height: 24),
                            GradientButton(
                              text: 'Login Sekarang',
                              isLoading: _isLoading,
                              onPressed: _login,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 32),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Belum memiliki akun? ', style: GoogleFonts.inter(fontSize: 14, color: const Color(0xFF40484C))),
                        GestureDetector(
                          onTap: () {},
                          child: Text('Daftar', style: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.bold, color: const Color(0xFF004253), decoration: TextDecoration.underline)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 48),

                    Center(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                        decoration: BoxDecoration(
                          color: const Color(0xFFE6E8EA).withOpacity(0.5), borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: const Color(0xFFBFC8CC).withOpacity(0.05)),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(width: 6, height: 6, decoration: const BoxDecoration(color: Color(0xFF004253), shape: BoxShape.circle)),
                            const SizedBox(width: 8),
                            Text('VERSION 1.0.0', style: GoogleFonts.inter(fontSize: 10, fontWeight: FontWeight.bold, color: const Color(0xFF40484C), letterSpacing: 2)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
