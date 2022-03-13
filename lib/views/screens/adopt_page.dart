import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:i_pet_care/views/widgets/searh_bar.dart';

import '../../constants.dart';
import '../../models/data/pet_data.dart';
import '../../models/pet_class.dart';
import '../widgets/pet_card.dart';

class AdoptPage extends StatefulWidget {
  const AdoptPage({Key? key}) : super(key: key);

  @override
  _AdoptPageState createState() => _AdoptPageState();
}

class _AdoptPageState extends State<AdoptPage> {
  List<Pet> petsData = Pets.all;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 16),
          child: Row(
            children: const [
              Text(
                "Haz un nuevo amigo",
                style: kTitle1Style,
                textAlign: TextAlign.start,
              ),
              Spacer(),
            ],
          ),
        ),
        const SearchBar(),
        buildGridView()
        // Column(
        //   children: petsData
        //       .map((item) => SizedBox(
        //           height: 174, width: 180, child: PetCard(pet: item)))
        //       .toList(),
        // )
      ],
    );
  }

  Widget buildGridView() => Expanded(
        child: GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.all(20.0),
          crossAxisSpacing: 10,
          mainAxisSpacing: 20,
          children: petsData
              .map((item) =>
                  SizedBox(height: 174, width: 180, child: PetCard(pet: item)))
              .toList(),
        ),
      );
}
