import 'package:flutter/material.dart';

class Profiledrawer extends StatelessWidget {
  const Profiledrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 20),

        // Bagian Foto Profil WhatsApp
        Center(
          child: Stack(
            children: [
              const CircleAvatar(
                radius: 65,
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person,
                  size: 75,
                  color: Colors.white,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    color: Color(0xFF075E54), // Warna hijau khas WhatsApp
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 30),

        // Info Nama
        const ListTile(
          leading: Icon(Icons.person, color: Colors.grey),
          title: Text(
            'Nama',
            style: TextStyle(color: Colors.grey, fontSize: 13),
          ),
          subtitle: Text(
            'Nama Kamu',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          trailing: Icon(Icons.edit, color: Color(0xFF075E54)),
        ),

        const Divider(indent: 70),

        // Info Info / Bio
        const ListTile(
          leading: Icon(Icons.info_outline, color: Colors.grey),
          title: Text(
            'Info',
            style: TextStyle(color: Colors.grey, fontSize: 13),
          ),
          subtitle: Text(
            'Ada dan tiada',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          trailing: Icon(Icons.edit, color: Color(0xFF075E54)),
        ),

        const Divider(indent: 70),

        // Info Nomor Telepon
        const ListTile(
          leading: Icon(Icons.phone, color: Colors.grey),
          title: Text(
            'Telepon',
            style: TextStyle(color: Colors.grey, fontSize: 13),
          ),
          subtitle: Text(
            '+62 812-3456-7890',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ),
      ],
    );
  }
}