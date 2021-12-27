import 'package:flutter/material.dart';
import 'package:flutter_dua/screens/get_started.dart';
import 'package:flutter_dua/ui/detail/detailpage.dart';
import 'package:flutter_dua/ui/home/homepage.dart';
import 'package:flutter_dua/ui/search/search.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MAJ Restaurant App',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      routes: {
        SearchPage.route: (context) => const SearchPage(),
        DetailPage.route: (context) => DetailPage(
          id: ModalRoute.of(context)!.settings.arguments.toString(),
        ),
      },
      home: GetStarted(),
    );
  }
}
