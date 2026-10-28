import 'package:flutter/material.dart';

class Homedrawer extends StatelessWidget {
  const Homedrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("List Game")),
      body: Container(
        height: 140,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5, // Jumlah item game
          itemBuilder: (context, index) {
            return Container(
              width: 120,
              margin: const EdgeInsets.all(8),
              child: Card(
                child: InkWell(
                  onTap: () {
                    // Aksi ketika container ditekan
                  },
                  child: const Center(
                    child: Icon(
                      Icons.games,
                      size: 40,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}