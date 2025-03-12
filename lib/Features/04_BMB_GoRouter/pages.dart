import 'package:flutter/material.dart';

class HomePage extends StatelessWidget 
{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context)
  {
    return const Center(child: Text('Home Page', style: TextStyle(fontSize: 20)));
  }
}

class SearchPage extends StatelessWidget
{
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context)
  {
    return const Center(child: Text('Search Page', style: TextStyle(fontSize: 20)));
  }
}

class ProfilePage extends StatelessWidget
{
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Profile Page', style: TextStyle(fontSize: 20)));
  }
}