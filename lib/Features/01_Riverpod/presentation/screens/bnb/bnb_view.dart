import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_area/Features/01_Riverpod/presentation/controllers/bnb/bnb_provider.dart';


class HomeScreen extends ConsumerWidget
{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final currentIndexProvider = ref.watch(bottomNavBarProvider);

    // List of pages
    final List<Widget> pages =
    [
      const HomePage(),
      const SearchPage(),
      const ProfilePage(),
    ];

    return Scaffold(
      body: pages[currentIndexProvider],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndexProvider,
        onTap: (index) => ref.read(bottomNavBarProvider.notifier).state = index,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}

// Dummy Pages
class HomePage extends StatelessWidget
{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context)
  {
    return const Center(child: Text("Home Page", style: TextStyle(fontSize: 24)));
  }
}

class SearchPage extends StatelessWidget
{
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context)
  {
    return const Center(child: Text("Search Page", style: TextStyle(fontSize: 24)));
  }
}

class ProfilePage extends StatelessWidget
{
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context)
  {
    return const Center(child: Text("Profile Page", style: TextStyle(fontSize: 24)));
  }
}
