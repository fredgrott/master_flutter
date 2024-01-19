// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:developer';

import 'package:catcher_2/catcher_2.dart';

/// CustomCatcherTwoLogger where the Dart developer log
/// method is used to output the correct log message. Have to use
/// log instead of print for observable logs as print is stripped
/// in release mode.
/// 
/// @author Fredrick Allan Grott.
class CustomCatcherTwoLogger extends Catcher2Logger {
  @override
  void info(String message) {
    
    log('Custom Catcher Logger | Info | $message');
  }

  @override
  void fine(String message) {
    
    log('Custom Catcher Logger | Fine | $message');
  }

  @override
  void warning(String message) {
    
    log('Custom Catcher Logger | Warning | $message');
  }

  @override
  void severe(String message) {
    
    log('Custom Catcher Logger | Severe | $message');
  }
}
