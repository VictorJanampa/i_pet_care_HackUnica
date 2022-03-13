import 'package:flutter/material.dart';
import 'package:i_pet_care/constants.dart';
import 'package:i_pet_care/views/widgets/button_row_item.dart';

import '../../models/pet_class.dart';

class PetDetailPage extends StatefulWidget {
  final Pet pet;
  const PetDetailPage({Key? key, required this.pet}) : super(key: key);

  @override
  _PetDetailPageState createState() => _PetDetailPageState();
}

class _PetDetailPageState extends State<PetDetailPage> {
  final _bodyTip =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin nec feugiat magna. Integer quis tempor libero, a iaculis quam. Vivamus vel leo at nisl bibendum sagittis quis quis massa. Mauris sodales purus ipsum, non ultrices nulla pharetra mollis. Sed efficitur eu ante quis tempor. Phasellus sed nisi sapien. Cras egestas consequat libero, vel sodales nunc lobortis non.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Material(
            elevation: 4,
            borderRadius: const BorderRadiusDirectional.vertical(
              top: Radius.zero,
              bottom: Radius.circular(15.0),
            ),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(widget.pet.imageUrl),
                      fit: BoxFit.cover),
                  borderRadius: const BorderRadiusDirectional.vertical(
                    top: Radius.zero,
                    bottom: Radius.circular(15.0),
                  )),
            ),
          ),
          const Text('Gatito'),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.gps_fixed),
              ),
              Text('Alberge 01'),
            ],
          ),
          Text(_bodyTip),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: const ButtonRowMaterial(text: 'Adoptame')),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: const ButtonRowMaterial(
                    text: 'Apoyame',
                    color: kAccentColor,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
