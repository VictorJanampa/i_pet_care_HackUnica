import 'package:flutter/material.dart';
import 'package:i_pet_care/constants.dart';
import 'package:i_pet_care/models/tip_class.dart';
import 'package:i_pet_care/views/widgets/see_more_button.dart';

class FeaturedTip extends StatefulWidget {
  final Tip tip;
  const FeaturedTip({Key? key, required this.tip}) : super(key: key);

  @override
  _FeaturedTipState createState() => _FeaturedTipState();
}

class _FeaturedTipState extends State<FeaturedTip> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: kSecondaryColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.tip.title,
            style: kTitle2Style.copyWith(color: kPrimaryColor),
          ),
          const SizedBox(height: 10),
          Text(
            widget.tip.body,
            style: kDetailStyle,
            maxLines: 3,
          ),
          const SizedBox(height: 10),
          const SeeMoreButton(),
        ],
      ),
    );
  }
}
