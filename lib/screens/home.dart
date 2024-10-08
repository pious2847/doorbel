import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(Iconsax.menu, color: Colors.white),
        title: const Text('Welcome,', style: TextStyle(color: Colors.white)),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.grey[800],
            child: const Icon(Iconsax.user, color: Colors.white),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Yussif Yahuza',
              style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Column(
                children: [
                  Text(
                    'COURIERS',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text('Delivering Excellence Every Time'),
                  SizedBox(height: 16),
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/courier_image.png'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Fastest Delivery Service You Can Trust',
              style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Just Few Clicks',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            const SizedBox(height: 16),
            const ListTile(
              leading: Icon(Iconsax.calendar, color: Colors.white),
              title: Text('Navigate to Schedule', style: TextStyle(color: Colors.white)),
              trailing: Icon(Iconsax.arrow_right_3, color: Colors.white),
            ),
            const ListTile(
              leading: Icon(Iconsax.location, color: Colors.white),
              title: Text('Enter Destination/Use current location', style: TextStyle(color: Colors.white)),
              trailing: Icon(Iconsax.arrow_right_3, color: Colors.white),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Iconsax.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Iconsax.calendar), label: 'Schedule'),
          BottomNavigationBarItem(icon: Icon(Iconsax.profile_circle), label: 'Profile'),
        ],
      ),
    );
  }
}