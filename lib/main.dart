import 'package:flutter/material.dart';
import 'package:i_pet_care/views/screens/adopt_page.dart';
import 'package:i_pet_care/views/screens/home_page.dart';
import 'package:i_pet_care/views/themes/custom_input_theme.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'I Pet Care',
      theme: ThemeData(
          inputDecorationTheme: CustomInputTheme.theme(),
          textSelectionTheme:
              const TextSelectionThemeData(cursorColor: kButtonColor),
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
              .copyWith(secondary: kButtonColor, primary: kButtonColor)),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _index = 0;
  final screens = [
    const HomePage(),
    const AdoptPage(),
    const HomePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.red.shade100,
          labelTextStyle: MaterialStateProperty.all(kDetailStyle),
        ),
        child: NavigationBar(
          selectedIndex: _index,
          onDestinationSelected: (index) {
            setState(() {
              _index = index;
            });
          },
          destinations: const [
            NavigationDestination(
                icon: Icon(Icons.home_outlined), label: "Home"),
            //NavigationDestination(
            //    icon: Icon(Icons.list_outlined), label: "Tips"),
            NavigationDestination(
                icon: Icon(Icons.favorite_outlined), label: "Adopt"),
            NavigationDestination(
                icon: Icon(Icons.group_outlined), label: "Profile"),
          ],
        ),
      ),
    );
  }
}
