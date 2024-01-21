// Copyright 2024 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Modified from codelabs, original license;
// Copyright 2020 The Flutter Authors. All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are
// met:
//
//    * Redistributions of source code must retain the above copyright
// notice, this list of conditions and the following disclaimer.
//    * Redistributions in binary form must reproduce the above
// copyright notice, this list of conditions and the following disclaimer
// in the documentation and/or other materials provided with the
// distribution.
//    * Neither the name of Google Inc. nor the names of its
// contributors may be used to endorse or promote products derived from
// this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.


import 'dart:ui';

import 'package:adaptive_scaffold_one/animations/animations.dart';
import 'package:flutter/material.dart';

class ListDetailTransition extends StatefulWidget {
  const ListDetailTransition({
    super.key,
    required this.animation,
    required this.one,
    required this.two,
  });

  final Animation<double> animation;
  final Widget one;
  final Widget two;

  @override
  State<ListDetailTransition> createState() => _ListDetailTransitionState();
}

class _ListDetailTransitionState extends State<ListDetailTransition> {
  Animation<double> widthAnimation = const AlwaysStoppedAnimation(0);
  late final Animation<double> sizeAnimation =
      SizeAnimation(parent: widget.animation);
  late final Animation<Offset> offsetAnimation = Tween<Offset>(
    begin: const Offset(1, 0),
    end: Offset.zero,
  ).animate(OffsetAnimation(parent: sizeAnimation));
  double currentFlexFactor = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // When the app's width is < 800, widgets one and two get 1/2 of
    // the available width, As the app gets wider, the allocation
    // gradually changes to 1/3 and 2/3 for widgets one and two. When
    // the window is wider than 1600, the allocation changes to 1/4  3/4.
    final double width = MediaQuery.of(context).size.width;
    double nextFlexFactor = switch (width) {
      >= 800 && < 1200 => lerpDouble(1000, 2000, (width - 800) / 400)!,
      >= 1200 && < 1600 => lerpDouble(2000, 3000, (width - 1200) / 400)!,
      >= 1600 => 3000,
      _ => 1000,
    };

    // Continue along the current animation curve if the
    // destionation flex factor has not changed.
    if (nextFlexFactor == currentFlexFactor) {
      return;
    }

    if (currentFlexFactor == 0) {
      widthAnimation =
          Tween<double>(begin: 0, end: nextFlexFactor).animate(sizeAnimation);
    } else {
      final TweenSequence<double> sequence = TweenSequence([
        if (sizeAnimation.value > 0) ...[
          TweenSequenceItem(
            tween: Tween(begin: 0, end: widthAnimation.value),
            weight: sizeAnimation.value,
          ),
        ],
        if (sizeAnimation.value < 1) ...[
          TweenSequenceItem(
            tween: Tween(begin: widthAnimation.value, end: nextFlexFactor),
            weight: 1 - sizeAnimation.value,
          ),
        ],
      ]);

      widthAnimation = sequence.animate(sizeAnimation);
    }

    currentFlexFactor = nextFlexFactor;
  }

  @override
  Widget build(BuildContext context) {
    return widthAnimation.value.toInt() == 0
        ? widget.one
        : Row(
            children: [
              Flexible(
                flex: 1000,
                child: widget.one,
              ),
              Flexible(
                flex: widthAnimation.value.toInt(),
                child: FractionalTranslation(
                  translation: offsetAnimation.value,
                  child: widget.two,
                ),
              ),
            ],
          );
  }
}
