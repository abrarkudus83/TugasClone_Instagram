import 'package:flutter/material.dart';

class ButtonApp extends StatelessWidget {
  const ButtonApp({super.key});

  // Reusable widget untuk membuat tombol login sosial agar tidak banyak duplikasi kode
  Widget _buildSocialButton({
    required IconData icon,
    required String label,
    required VoidCallback onPressed,
  }) {
    return SizedBox(
      height: 50,
      width: double.infinity, // Agar tombol memenuhi lebar kontainer
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: Color(0xFFE0E0E0)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Icon(icon, color: Colors.black87),
            ),
            Text(
              label,
              style: const TextStyle(
                color: Color.fromARGB(255, 23, 23, 23),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildSocialButton(
          icon: Icons.g_mobiledata,
          label: "Google",
          onPressed: () {},
        ),
        const SizedBox(height: 10),
        _buildSocialButton(
          icon: Icons.email_outlined,
          label: "Email",
          onPressed: () {},
        ),
        const SizedBox(height: 10),
        _buildSocialButton(
          icon: Icons.music_note,
          label: "TikTok",
          onPressed: () {},
        ),
      ],
    );
  }
}