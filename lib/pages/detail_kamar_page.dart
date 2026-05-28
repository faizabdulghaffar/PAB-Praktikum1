import 'package:flutter/material.dart';

class DetailKamarPage extends StatelessWidget {

  final String nama;
  final String harga;
  final String gambar;
  final String detail;

  const DetailKamarPage({
    super.key,
    required this.nama,
    required this.harga,
    required this.gambar,
    required this.detail,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(nama),
      ),

      body: SafeArea(
        child: SingleChildScrollView(

          child: Padding(
            padding: const EdgeInsets.all(20),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                ClipRRect(
                  borderRadius: BorderRadius.circular(20),

                  child: Image.network(
                    gambar,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),

                const SizedBox(height: 20),

                Text(
                  nama,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                Text(
                  harga,
                  style: const TextStyle(
                    fontSize: 24,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),

                const Text(
                  "Room Details",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                Text(
                  detail,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 30),

                const Text(
                  "Facilities",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 15),

                const Row(
                  children: [
                    Icon(Icons.wifi),
                    SizedBox(width: 10),
                    Text("Free Wifi"),
                  ],
                ),

                const SizedBox(height: 10),

                const Row(
                  children: [
                    Icon(Icons.tv),
                    SizedBox(width: 10),
                    Text("Smart TV"),
                  ],
                ),

                const SizedBox(height: 10),

                const Row(
                  children: [
                    Icon(Icons.pool),
                    SizedBox(width: 10),
                    Text("Swimming Pool"),
                  ],
                ),

                const SizedBox(height: 40),

                SizedBox(
                  width: double.infinity,
                  height: 55,

                  child: ElevatedButton(
                    onPressed: () {

                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(

                            title: const Text(
                              "Confirm Booking",
                            ),

                            content: Text(
                              "Book $nama for $harga per night?"
                            ),

                            actions: [

                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text("Cancel"),
                              ),

                              ElevatedButton(
                                onPressed: () {

                                  Navigator.pop(context);

                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        "$nama berhasil dibooking",
                                      ),
                                    ),
                                  );
                                },

                                child: const Text("OK"),
                              ),
                            ],
                          );
                        },
                      );
                    },

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),

                    child: const Text(
                      "Book Now",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
