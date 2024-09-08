import 'dart:ui';

import 'package:flutter/material.dart';

class GlassBackgroundWidget extends StatelessWidget {
  const GlassBackgroundWidget({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
        child: child,
      ),
    );
  }
}
