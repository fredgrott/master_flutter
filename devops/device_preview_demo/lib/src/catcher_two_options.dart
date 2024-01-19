// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: avoid_redundant_argument_values

import 'package:catcher_2/catcher_2.dart';
import 'package:catcher_two_demo/src/custom_catcher_two_logger.dart';


final debugOptions = Catcher2Options(
  PageReportMode(), 
  [
    EmailManualHandler(['recipient@email.com']),
    ConsoleHandler(),
  ],
  localizationOptions: [
    LocalizationOptions(
      'en',
      pageReportModeTitle: 'Exception Report',
      pageReportModeDescription: 'Page report mode.',
      pageReportModeAccept: 'Accept',
      pageReportModeCancel: 'Cancel',
    ),
    LocalizationOptions(
      'de',
      pageReportModeTitle: 'Ausnahmebericht',
      pageReportModeDescription: 'Seitenberichtsmodus',
      pageReportModeAccept: 'Akzeptieren',
      pageReportModeCancel: 'Stornieren',
    ),
  ],
  logger: CustomCatcherTwoLogger(),
);

final releaseOptions = Catcher2Options(
  PageReportMode(), 
  [
    EmailManualHandler(['recipient@email.com']),
  ],
  localizationOptions: [
    LocalizationOptions(
      'en',
      pageReportModeTitle: 'Exception Report',
      pageReportModeDescription: 'Page report mode.',
      pageReportModeAccept: 'Accept',
      pageReportModeCancel: 'Cancel',
    ),
    LocalizationOptions(
      'de',
      pageReportModeTitle: 'Ausnahmebericht',
      pageReportModeDescription: 'Seitenberichtsmodus',
      pageReportModeAccept: 'Akzeptieren',
      pageReportModeCancel: 'Stornieren',
    ),
  ],
  logger: CustomCatcherTwoLogger(),
);
