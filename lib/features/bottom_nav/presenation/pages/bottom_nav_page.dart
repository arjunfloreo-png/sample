import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../home/presenation/pages/page_section.dart';
import '../../../settings/presenation/pages/settings_page.dart';
import '../provider/bottom_nav_provider.dart';

class BottomNavPage extends StatelessWidget {
  const BottomNavPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BottomNavProvider(),
      child: Consumer<BottomNavProvider>(
        builder: (context, navProvider, child) {
          return Scaffold(
            body: IndexedStack(
              index: navProvider.currentIndex,
              children: const [
                HomeScreen(),
                SettingsScreen(),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: navProvider.currentIndex,
              onTap: (index) {
                navProvider.updateIndex(index);
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: 'Settings',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}