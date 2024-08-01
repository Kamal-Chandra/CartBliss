import 'package:cart_bliss/common/widgets/custom_shapes/containers/circularContainer.dart';
import 'package:cart_bliss/utils/constants/colors.dart';
import 'package:cart_bliss/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TChoiceChip extends StatelessWidget {
  final String label;
  final bool selected;
  final void Function(bool)? onSelected;

  const TChoiceChip({
    super.key,
    this.label='',
    required this.selected,
    this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    final isColor = HelperFunctions.getColor(label)!=null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor? const SizedBox(): Text(label),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected? TColors.white: null),
        backgroundColor: isColor? HelperFunctions.getColor(label)!: null,
        labelPadding: isColor? EdgeInsets.zero: null,
        padding: isColor? EdgeInsets.zero: null,
        shape: isColor? const CircleBorder(): null,
        avatar: isColor? Center(child: CircularContainer(width: 50, height: 50, backgroundColor: HelperFunctions.getColor(label)!)): null,
      ),
    );
  }
}