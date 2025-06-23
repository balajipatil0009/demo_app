// lib/main.dart

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'dart:io';

import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import 'package:flutter_desktop_app/providers/form_provider.dart';
import 'package:flutter_desktop_app/pages/home_page.dart';
import 'package:flutter_desktop_app/pages/form1_page.dart';
import 'package:flutter_desktop_app/pages/form2_page.dart';
import 'package:flutter_desktop_app/pages/forms_list_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize FFI for SQLite on desktop platforms
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;
  }

  // REMOVED: await SQLiteService.initialize();
  // The database will be initialized lazily on its first use.

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FormProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // --- UPDATED: Simplified and more robust router ---
  final GoRouter _router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const HomePage();
        },
      ),
      // Route for viewing/editing Form 1
      GoRoute(
        path: '/form1/:id',
        builder: (BuildContext context, GoRouterState state) {
          final idParam = state.pathParameters['id'];
          // Handles both '/form1/new' and '/form1/123'
          final formId = (idParam == 'new' || idParam == null)
              ? null
              : int.tryParse(idParam);
          return Form1Page(formId: formId);
        },
      ),
      // Route for viewing/editing Form 2
      GoRoute(
        path: '/form2/:id',
        builder: (BuildContext context, GoRouterState state) {
          final idParam = state.pathParameters['id'];
          // Handles both '/form2/new' and '/form2/123'
          final formId = (idParam == 'new' || idParam == null)
              ? null
              : int.tryParse(idParam);
          return Form2Page(formId: formId);
        },
      ),
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
      routerConfig: _router,
    );
  }
}
