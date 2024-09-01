import 'curved_edges.dart';
import 'package:flutter/material.dart';

class CustomCurvedEdge extends StatelessWidget {
  const CustomCurvedEdge({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomCurvedEdges(),
      child: child,
    );
  }
}