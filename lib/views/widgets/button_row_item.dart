import 'package:flutter/material.dart';
import 'package:i_pet_care/constants.dart';

class ButtonRowMaterial extends StatefulWidget {
  final String text;
  final Color color;
  const ButtonRowMaterial(
      {Key? key, required this.text, this.color = kPrimaryColor})
      : super(key: key);

  @override
  _ButtonRowMaterialState createState() => _ButtonRowMaterialState();
}

class _ButtonRowMaterialState extends State<ButtonRowMaterial> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        elevation: 2.0,
        borderRadius: kCardBorderRadius,
        color: (widget.color),
        child: InkWell(
          splashColor: widget.color.withOpacity(0.2),
          onTap: () {
            debugPrint("Tap ${widget.text}");
          },
          child: Center(
              child: Text(
            widget.text,
            style: kTitle2Style.copyWith(color: Colors.white),
          )),
        ),
      ),
    );
  }
}
