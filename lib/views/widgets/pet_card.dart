import 'package:flutter/material.dart';
import 'package:i_pet_care/constants.dart';

import '../../models/pet_class.dart';
import '../screens/pet_detail_page.dart';

class PetCard extends StatefulWidget {
  final Pet pet;

  const PetCard({
    Key? key,
    required this.pet,
  }) : super(key: key);

  @override
  _PetCardState createState() => _PetCardState();
}

class _PetCardState extends State<PetCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: kCardBorderRadius,
      ),
      elevation: 4,
      child: InkWell(
        borderRadius: kCardBorderRadius,
        splashColor: kPrimaryColor.withOpacity(.5),
        onTap: () {
          debugPrint('Card Taped');
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => PetDetailPage(
                    pet: widget.pet,
                  )));
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Ink(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: kCardBorderRadius,
                  image: DecorationImage(
                    image: NetworkImage(widget.pet.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: 80,
                        child: Text(
                          widget.pet.petName,
                          style: kTitle2Style,
                        ),
                      ),
                      SizedBox(
                        width: 80,
                        child: Text(
                          widget.pet.specie,
                          style: kDetailStyle,
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.all(4.0),
                    padding: const EdgeInsets.symmetric(
                        vertical: 2.0, horizontal: 8.0),
                    decoration: BoxDecoration(
                      color: kSecondaryColor,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Center(
                      child: Text(
                        widget.pet.petAge,
                        style: kDetailStyle.copyWith(
                            color: kPrimaryColor, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
