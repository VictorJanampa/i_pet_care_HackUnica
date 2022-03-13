import 'package:i_pet_care/constants.dart';
import 'package:flutter/material.dart';

class CustomInputTheme {
  static TextStyle _builtTextStyle(Color color, {double size = 16.0}) {
    return TextStyle(color: color, fontSize: size);
  }

  static OutlineInputBorder _builtBorder(Color color, {double width = 1.0}) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(25.0),
        borderSide: BorderSide(color: color, width: width));
  }

  static InputDecorationTheme theme() => InputDecorationTheme(
        contentPadding: const EdgeInsets.all(16.0),
        isDense: true,
        //iconColor: Colors.grey,
        //suffixIconColor: Colors.grey,

        ///Borders
        enabledBorder: _builtBorder(Colors.grey[400]!),
        focusedBorder: _builtBorder(kButtonColor, width: 2.0),
        disabledBorder: _builtBorder(Colors.grey[400]!),
        errorBorder: _builtBorder(Colors.red),
        focusedErrorBorder: _builtBorder(Colors.red.shade900),

        ///TextStyle
        suffixStyle: _builtTextStyle(kButtonColor),
        counterStyle: _builtTextStyle(Colors.grey, size: 12.0),
        floatingLabelStyle: _builtTextStyle(kButtonColor),
        errorStyle: _builtTextStyle(Colors.black, size: 12.0),
        helperStyle: _builtTextStyle(Colors.black, size: 12.0),
        hintStyle: _builtTextStyle(Colors.grey),
        labelStyle: _builtTextStyle(kButtonColor),
        prefixStyle: _builtTextStyle(kButtonColor),
      );
}
