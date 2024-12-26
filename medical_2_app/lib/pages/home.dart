import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:medical_2_app/widgets/health_needs.dart';
import 'package:medical_2_app/widgets/nearby_doctors.dart';
import 'package:medical_2_app/widgets/upcoming_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Hi, Muhammad Deland"),
            Text(
              "How are youu feeling today?",
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Ionicons.notifications_outline),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Ionicons.search_outline),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(14.0),
        children: [
          // Upcoming Card
          const UpcomingCard(),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            "Health Needs",
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const HealthNeeds(),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            "Nearby Doctors",
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const NearbyDoctors(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Ionicons.home_outline), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.calendar_outline), label: "Calendar"),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.chatbubbles_outline), label: "Chats"),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.person_outline), label: "Profile"),
          ]),
    );
  }
}
