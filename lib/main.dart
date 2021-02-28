import 'package:flutter/material.dart';
import 'package:movie_flutter/screens/details_screen.dart';
import 'package:movie_flutter/screens/home_screen.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomeScreen()
      // DetailsScreen()
    );
  }
}