import 'package:flutter/material.dart';
import 'package:responsive_website/responsive/desktop_layout.dart';
import 'package:responsive_website/responsive/mobile_layout.dart';
import 'package:responsive_website/responsive/responsive_layout.dart';
import 'package:responsive_website/responsive/tablet_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileScaffold: const MobileScaffold(),
        tabletScaffold: const TabletScaffold(),
        desktopScaffold: const DesktopScaffold(),
      ),
    );
  }
}
