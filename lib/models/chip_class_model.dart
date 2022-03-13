import 'package:flutter/material.dart';
import 'package:i_pet_care/constants.dart';

class ChipData {
  final String label;
  final Color color;
  final int? index;
  final bool isSelected;

  const ChipData({
    required this.label,
    this.color = kPrimaryColor,
    this.isSelected = false,
    this.index,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChipData &&
          runtimeType == other.runtimeType &&
          label == other.label &&
          color == other.color &&
          isSelected == other.isSelected;

  @override
  int get hashCode => label.hashCode ^ color.hashCode ^ isSelected.hashCode;
}
