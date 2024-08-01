import 'curved_edges.dart';
import 'package:flutter/material.dart';

class CustomCurvedEdge extends StatelessWidget {
  const CustomCurvedEdge({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomCurvedEdges(),
      child: child,
    );
  }
}