import 'package:flutter/material.dart';
import 'package:i_pet_care/constants.dart';

class SeeMoreButton extends StatefulWidget {
  const SeeMoreButton({Key? key}) : super(key: key);

  @override
  _SeeMoreButtonState createState() => _SeeMoreButtonState();
}

class _SeeMoreButtonState extends State<SeeMoreButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: kCardBorderRadius,
        color: kPrimaryColor,
      ),
      child: Center(
        child: Text(
          'Ver más',
          style: kTitle2Style.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
