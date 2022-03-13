import 'package:i_pet_care/constants.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: TextField(
        textInputAction: TextInputAction.search,
        textAlign: TextAlign.start,
        decoration: InputDecoration(
          hintText: 'Buscar',
          focusColor: kButtonColor,
          suffixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}
