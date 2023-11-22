import 'package:flutter/material.dart';
import 'package:project_1/Apps.dart';
import 'package:project_1/CalculatorScreen.dart';
import 'package:project_1/Experiences.dart';
import 'package:project_1/About.dart';
import 'package:url_launcher/url_launcher.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeActivity(),
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
        hintColor: Colors.black87,
        textTheme: const TextTheme(
          headline6: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          subtitle1: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
          subtitle2: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5, // Changed the length to 5 for the five tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "My Portfolio",
            style: Theme.of(context).textTheme.headline6!,
          ),
          backgroundColor: Theme.of(context).primaryColor,
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                icon: Icon(Icons.person, color: Colors.black),
                text: 'About',
              ),

              Tab(
                icon: Icon(Icons.work, color: Colors.black),
                text: 'Experiences',
              ),
              Tab(
                icon: Icon(Icons.apps_outage_outlined, color: Colors.black),
                text: 'Apps',
              ),


            ],
          ),
        ),

        body: const TabBarView(
          children: [
            About(),
            Experiences(),
            Apps(),
          ],
        ),
      ),
    );
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "Could not launch $url";
    }
  }
}


