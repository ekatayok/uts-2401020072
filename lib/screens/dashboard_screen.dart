import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  void _logout(BuildContext context) {
    // Mengembalikan user ke halaman login (rute '/') dan menghapus semua riwayat rute sebelumnya
    Navigator.pushNamedAndRemoveUntil(
      context,
      '/',
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    // Mengambil username dari argumen routing, atau gunakan 'Ekatayok' sebagai default
    final userName = ModalRoute.of(context)?.settings.arguments as String? ?? 'Ekatayok';

    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard', style: GoogleFonts.manrope(fontWeight: FontWeight.bold, color: const Color(0xFF004253))),
        backgroundColor: Colors.white, elevation: 0, iconTheme: const IconThemeData(color: Color(0xFF004253)),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => _logout(context),
            tooltip: 'Logout',
          )
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                color: Color(0xFF004253),
              ),
              currentAccountPicture: const CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, color: Color(0xFF004253), size: 40),
              ),
              accountName: Text(
                userName,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              accountEmail: Text(
                'ekatayok@gmail.com',
                style: GoogleFonts.inter(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 14,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home, color: Color(0xFF40484C)),
              title: Text('Home', style: GoogleFonts.inter(fontSize: 16, color: const Color(0xFF191C1E))),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings, color: Color(0xFF40484C)),
              title: Text('Settings', style: GoogleFonts.inter(fontSize: 16, color: const Color(0xFF191C1E))),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(color: Colors.black12, height: 1),
            ListTile(
              leading: const Icon(Icons.logout_outlined, color: Color(0xFF40484C)),
              title: Text('Logout', style: GoogleFonts.inter(fontSize: 16, color: const Color(0xFF191C1E))),
              onTap: () => _logout(context),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 4,
                shadowColor: const Color(0xFF004253).withOpacity(0.1),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundColor: const Color(0xFF004253).withOpacity(0.1),
                        child: const Icon(Icons.person, color: Color(0xFF004253), size: 32),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Selamat datang,', style: GoogleFonts.inter(fontSize: 16, color: const Color(0xFF40484C))),
                            const SizedBox(height: 4),
                            Text(userName, style: GoogleFonts.manrope(fontSize: 28, fontWeight: FontWeight.w800, color: const Color(0xFF004253))),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: const Color(0xFFE6E8EA)),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFF004253).withOpacity(0.04),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          )
                        ],
                      ),
                      child: ListTile(
                        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        leading: CircleAvatar(
                          radius: 24,
                          backgroundColor: const Color(0xFF004253).withOpacity(0.08),
                          child: const Icon(Icons.folder_shared_outlined, color: Color(0xFF004253), size: 24),
                        ),
                        title: Text(
                          'Berkas Laporan ${index + 1}',
                          style: GoogleFonts.manrope(fontSize: 16, fontWeight: FontWeight.bold, color: const Color(0xFF004253)),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text(
                            'Informasi rinci terkait data pendukung.',
                            style: GoogleFonts.inter(fontSize: 12, color: const Color(0xFF7A868C)),
                          ),
                        ),
                        trailing: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF0F5F7),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(Icons.arrow_forward_ios, color: Color(0xFF004253), size: 16),
                        ),
                        onTap: () {},
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
