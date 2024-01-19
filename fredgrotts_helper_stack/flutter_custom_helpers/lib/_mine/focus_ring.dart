// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Orig Copyright (c) 2023 Simon Lightfoot under MIT Licnese
// gist is here https://gist.github.com/slightfoot/907156540cf1e4ec60dbd96104769098

import 'package:flutter/material.dart';

/// MD3 [FocusRing] implemented to get focus per widget.
/// Keyboard arrows trigger it and so does tab. In real
/// app use would use the Theme.of(context).colorScheme.outline
/// as the border color base and compute an inversion of it.
class FocusRing extends StatefulWidget {
  const FocusRing({
    super.key,
    required this.child, required this.boxDecorationColor, required this.borderColor,
  });

  final Color boxDecorationColor;
  final Color borderColor;

  final Widget child;

  @override
  State<FocusRing> createState() => FocusRingState();
}

class FocusRingState extends State<FocusRing> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  bool _showDecoration = false;

  void _onFocusChange(bool focused) {
    setState(() => _showDecoration = focused);
  }

  @override
  Widget build(BuildContext context) {
    // build in AutomaticKeepAliveMixin is marked must call super so
    // this needed here
    super.build(context);
    return Focus(
      onFocusChange: _onFocusChange,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeInOut,
        foregroundDecoration: _showDecoration
            ? BoxDecoration(
                border: Border.all(
                  color: widget.borderColor,
                  width: 3.0,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(4.0),
                ),
                color: widget.boxDecorationColor,
              )
            : const BoxDecoration(),
        child: widget.child,
      ),
    );
  }
}
