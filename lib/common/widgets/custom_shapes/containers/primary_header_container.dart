import 'package:flutter/material.dart';
import 'package:cart_bliss/utils/constants/colors.dart';
import 'package:cart_bliss/common/widgets/custom_shapes/containers/circularContainer.dart';
import 'package:cart_bliss/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CustomCurvedEdge(
      child: Container(
        color: TColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: CircularContainer(
                  backgroundColor: TColors.textWhite.withOpacity(0.1),
                  width: 500, // Adjust size as needed
                  height: 500, // Adjust size as needed
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: CircularContainer(
                  backgroundColor: TColors.textWhite.withOpacity(0.1),
                  width: 500, // Adjust size as needed
                  height: 500, // Adjust size as needed
                ),
              ),
              Center(
                child: child,
              ),
            ],
          ),
        ),
      ),
    );
  }
}