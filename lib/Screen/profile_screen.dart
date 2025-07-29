import 'package:ecomerce_class_app/widgets/subtitle_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.network('https://picsum.photos/seed/picsum/50/50'),
        ),
        title: const Text('Profile Screen'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Welcome, Adan',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Text(
                'adan@gmail.com',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const SizedBox(
                height: 20,
              ),
              const SubtitleTextWidget(
                label: 'General',
                color: Colors.grey,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomListTile(
                imagePath: 'https://picsum.photos/seed/orders/50/50',
                text: 'All orders',
                function: () {},
              ),
              CustomListTile(
                imagePath: 'https://picsum.photos/seed/wishlist/50/50',
                text: 'Wishlist',
                function: () {},
              ),
              CustomListTile(
                imagePath: 'https://picsum.photos/seed/viewed/50/50',
                text: 'Viewed recently',
                function: () {},
              ),
              CustomListTile(
                imagePath: 'https://picsum.photos/seed/address/50/50',
                text: 'Address',
                function: () {},
              ),
              const Divider(
                thickness: 1,
              ),
              const SizedBox(
                height: 10,
              ),
              const SubtitleTextWidget(
                label: 'Settings',
                color: Colors.grey,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomListTile(
                imagePath: 'https://picsum.photos/seed/privacy/50/50',
                text: 'Privacy policy',
                function: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {},
                  icon: const Icon(Icons.login),
                  label: const Text('Logout'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.imagePath,
    required this.text,
    required this.function,
  });
  final String imagePath, text;
  final Function function;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        function();
      },
      leading: Image.network(
        imagePath,
        height: 30,
        loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
          if (loadingProgress == null) return child;
          return const SizedBox(
            width: 30,
            height: 30,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
        errorBuilder: (context, error, stackTrace) => const Icon(Icons.error, size: 30),
      ),
      title: SubtitleTextWidget(label: text),
      trailing: const Icon(IconlyLight.arrowRight2),
    );
  }
}