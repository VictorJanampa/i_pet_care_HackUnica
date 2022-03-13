import 'package:flutter/material.dart';
import 'package:i_pet_care/models/data/chip_data.dart';
import 'package:i_pet_care/models/pet_class.dart';
import 'package:i_pet_care/views/widgets/featured_tip.dart';
import 'package:i_pet_care/views/widgets/pet_card.dart';

import '../../models/chip_class_model.dart';
import '../../models/data/pet_data.dart';
import '../../models/tip_class.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final double spacing = 8;
  int? _value;

  List<ChipData> chipsData = ChipsData.all;
  List<Pet> petsData = Pets.all;
  final _imageUrl =
      "https://urgenciesveterinaries.com/wp-content/uploads/2020/01/hipotiroidismo-perros-01.jpg";
  final _bodyTip =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin nec feugiat magna. Integer quis tempor libero, a iaculis quam. Vivamus vel leo at nisl bibendum sagittis quis quis massa. Mauris sodales purus ipsum, non ultrices nulla pharetra mollis. Sed efficitur eu ante quis tempor. Phasellus sed nisi sapien. Cras egestas consequat libero, vel sodales nunc lobortis non.";
  late final Tip tip;

  @override
  void initState() {
    super.initState();

    tip = Tip(
        title: 'Tips para cuidar tu perro',
        imageUrl: _imageUrl,
        body: _bodyTip);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Hola PetLover",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 12,
            ),
            FeaturedTip(tip: tip),
            buildChoiceChips(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                PetCard(pet: petsData[0]),
                PetCard(pet: petsData[1]),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildChoiceChips() => Wrap(
        runSpacing: spacing,
        spacing: spacing,
        children: chipsData
            .map(
              (chip) => ChoiceChip(
                label: Text(chip.label),
                backgroundColor: Colors.red.shade100,
                labelStyle: _value == chip.index
                    ? const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white)
                    : const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                selectedColor: chip.color,
                selected: _value == chip.index,
                onSelected: (bool selected) {
                  setState(() {
                    _value = selected ? chip.index : null;
                  });
                },
              ),
            )
            .toList(),
      );
}
