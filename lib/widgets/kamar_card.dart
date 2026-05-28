import 'package:flutter/material.dart';
import '../pages/detail_kamar_page.dart';

class KamarCard extends StatelessWidget {

  final String nama;
  final String harga;
  final String gambar;
  final String detail;

  const KamarCard({
    super.key,
    required this.nama,
    required this.harga,
    required this.gambar,
    required this.detail,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: () {

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailKamarPage(
              nama: nama,
              harga: harga,
              gambar: gambar,
              detail: detail,
            ),
          ),
        );
      },

      child: Container(
        padding: const EdgeInsets.all(10),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.grey.shade300),
        ),

        child: Column(
          children: [

            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),

                child: Image.network(
                  gambar,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),

            const SizedBox(height: 10),

            Text(
              nama,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              harga,
              style: const TextStyle(
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}