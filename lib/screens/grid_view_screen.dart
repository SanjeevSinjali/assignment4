import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  GridViewScreen({super.key});

  final List<Map<String, String>> items = [

    {
      'name': 'Home',
      'image': 'https://cdn-icons-png.flaticon.com/512/25/25694.png',
    },

    {
      'name': 'Person',
      'image': 'https://cdn-icons-png.flaticon.com/512/1077/1077012.png',
    },

    {
      'name': 'Phone',
      'image': 'https://cdn-icons-png.flaticon.com/512/15/15874.png',
    },

    {
      'name': 'Email',
      'image': 'https://cdn-icons-png.flaticon.com/512/561/561127.png',
    },

    {
      'name': 'Camera',
      'image': 'https://cdn-icons-png.flaticon.com/512/685/685655.png',
    },

    {
      'name': 'Shopping',
      'image': 'https://cdn-icons-png.flaticon.com/512/1170/1170678.png',
    },

    {
      'name': 'Music',
      'image': 'https://cdn-icons-png.flaticon.com/512/727/727245.png',
    },

    {
      'name': 'Settings',
      'image': 'https://cdn-icons-png.flaticon.com/512/2099/2099058.png',
    },

    {
      'name': 'Location',
      'image': 'https://cdn-icons-png.flaticon.com/512/684/684908.png',
    },
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View Screen'),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(10),

        child: GridView.builder(
          itemCount: items.length,

          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),

          itemBuilder: (context, index) {

            return Container(
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(12),
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [

                  Image.network(
                    items[index]['image']!,
                    height: 50,
                    width: 50,
                    errorBuilder: (context, error, stackTrace) {
                      return const Icon(
                        Icons.broken_image,
                        color: Colors.grey,
                        size: 40,
                      );
                    },
                  ),

                  const SizedBox(height: 10),

                  Text(
                    items[index]['name']!,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}