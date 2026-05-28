import 'package:flutter/material.dart';
import '../widgets/kamar_card.dart';

class HalamanKedua extends StatelessWidget {
  const HalamanKedua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: const Text(
          "TravelGo",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),

        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,

        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            ClipRRect(
              borderRadius: BorderRadius.circular(15),

              child: Image.network(
                'https://awsimages.detik.net.id/community/media/visual/2021/11/08/piaynemo-dan-telaga-bintang-raja-ampat-5_169.jpeg?w=1200',
                height: 180,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 25),

            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                childAspectRatio: 0.9,

                children: [

                  KamarCard(
                    nama: "Suite Room",
                    harga: "\$49",
                    gambar:
                        "https://images.unsplash.com/photo-1505693416388-ac5ce068fe85",
                    detail:
                        "2 Beds, 1 Bathroom, TV, Balcony View",
                  ),

                  KamarCard(
                    nama: "Villa Room",
                    harga: "\$99",
                    gambar:
                        "https://images.unsplash.com/photo-1522708323590-d24dbb6b0267",
                    detail:
                        "1 King Bed, Pool View, Free Wifi",
                  ),

                  KamarCard(
                    nama: "Villa 2 Room",
                    harga: "\$140",
                    gambar:
                        "https://images.unsplash.com/photo-1502672260266-1c1ef2d93688",
                    detail:
                        "2 Rooms, Kitchen, Garden View",
                  ),

                  KamarCard(
                    nama: "Villa 3 Room",
                    harga: "\$149",
                    gambar:
                        "https://images.unsplash.com/photo-1496417263034-38ec4f0b665a",
                    detail:
                        "3 Rooms, Private Pool, Wifi",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}