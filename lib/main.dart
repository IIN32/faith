import 'package:flutter/material.dart';
import './menus.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'faith',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: "OpenSans",
          primarySwatch: Colors.indigo,
          textTheme: ThemeData.dark().textTheme.copyWith(
                bodyLarge: const TextStyle(color: Colors.red),
                bodyMedium: const TextStyle(color: Colors.black),
                titleMedium: const TextStyle(
                      fontFamily: "QuickSand",
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
              )
      ),
      home: const MenusScreens(),
        // home: FastdayReminderReminder()
    );
  }
}
