// lib/widgets/app_navigation_bar.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppNavigationBar extends StatelessWidget implements PreferredSizeWidget {
  const AppNavigationBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight); // Standard AppBar height.

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Desktop Forms App'),
      centerTitle: false, // Align title to start.
      elevation: 4, // Add a subtle shadow.
      backgroundColor: Colors.blue.shade700,
      foregroundColor: Colors.white,
      actions: <Widget>[
        // Navigation button for Home.
        TextButton(
          onPressed: () => context.go('/'),
          child: const Text('Home', style: TextStyle(color: Colors.white)),
        ),
        const SizedBox(width: 10),
        // Navigation button for Forms List.
        TextButton(
          onPressed: () => context.go('/forms-list'),
          child: const Text(
            'Submitted Forms',
            style: TextStyle(color: Colors.white),
          ),
        ),
        const SizedBox(width: 20), // Add some spacing at the end.
      ],
    );
  }
}
