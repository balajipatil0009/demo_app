// lib/pages/home_page.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_desktop_app/widgets/app_navigation_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppNavigationBar(), // Custom navigation bar.
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Welcome message.
              Text(
                'Welcome to the Desktop Forms App!',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: Colors.blue.shade700,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              // Buttons to navigate to different forms.
              Wrap(
                spacing: 20.0, // Horizontal space between buttons.
                runSpacing: 20.0, // Vertical space between button rows.
                alignment: WrapAlignment.center,
                children: [
                  // Button for Form 1.
                  SizedBox(
                    width: 200, // Fixed width for buttons.
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () =>
                          context.go('/form1/new'), // Navigate to new Form 1.
                      child: const Text('Fill Form 1'),
                    ),
                  ),
                  // Button for Form 2.
                  SizedBox(
                    width: 200,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () =>
                          context.go('/form2/new'), // Navigate to new Form 2.
                      child: const Text('Fill Form 2'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
