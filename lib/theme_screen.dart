import 'package:flutter/material.dart';
import 'package:haris_frontend/provider/theme_provider.dart';
import 'package:provider/provider.dart';


class ThemeScreen extends StatefulWidget {
  const ThemeScreen({super.key});

  @override
  State<ThemeScreen> createState() => _ThemeScreenState();
}

class _ThemeScreenState extends State<ThemeScreen> {
  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("Hello"),
            Switch(
                value: themeProvider.isDark,
                onChanged: (value){
                  themeProvider.setTheme(value);
                }),
          ],
        ),
      ),
    );
  }
}
