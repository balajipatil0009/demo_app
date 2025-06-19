import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart'; // For date formatting

import 'package:flutter_desktop_app/models/form_data.dart';
import 'package:flutter_desktop_app/services/isar_service.dart';
import 'package:flutter_desktop_app/pages/home_page.dart';
import 'package:flutter_desktop_app/pages/form1_page.dart';
import 'package:flutter_desktop_app/pages/form2_page.dart';
import 'package:flutter_desktop_app/pages/forms_list_page.dart';
import 'package:flutter_desktop_app/providers/form_provider.dart';

void main() async {
  // Ensure Flutter widgets are initialized before accessing plugins like Isar.
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize Isar database.
  await IsarService.initialize();
  runApp(
    // MultiProvider is used to provide multiple state management instances.
    MultiProvider(
      providers: [
        // ChangeNotifierProvider for FormProvider to manage form data across the app.
        ChangeNotifierProvider(create: (_) => FormProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // GoRouter configuration for navigating between pages.
  final GoRouter _router = GoRouter(
    routes: <RouteBase>[
      // Home page route.
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const HomePage();
        },
      ),
      // Form 1 page route, can take an optional 'id' parameter for editing.
      GoRoute(
        path: '/form1/:id',
        builder: (BuildContext context, GoRouterState state) {
          final String? id = state.pathParameters['id'];
          return Form1Page(formId: id != null ? int.tryParse(id) : null);
        },
      ),
      // Form 2 page route, can take an optional 'id' parameter for editing.
      GoRoute(
        path: '/form2/:id',
        builder: (BuildContext context, GoRouterState state) {
          final String? id = state.pathParameters['id'];
          return Form2Page(formId: id != null ? int.tryParse(id) : null);
        },
      ),
      // Forms list page route.
      GoRoute(
        path: '/forms-list',
        builder: (BuildContext context, GoRouterState state) {
          return const FormsListPage();
        },
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Desktop App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // Define input decoration theme for minimalistic design.
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(color: Colors.blue, width: 2.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(color: Colors.grey, width: 1.0),
          ),
          filled: true,
          fillColor: Colors.grey[50],
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        ),
        // Define elevated button theme.
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            textStyle:
                const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      routerConfig: _router, // Assign the GoRouter to the app.
    );
  }
}
