{\rtf1\ansi\deff0\nouicompat{\fonttbl{\f0\fnil\fcharset0 Calibri;}{\f1\fnil\fcharset0 Courier New;}}
{\*\generator Riched20 10.0.19041}\viewkind4\uc1 
\pard\sa200\sl276\slmult1\f0\fs22\lang9\par

\pard\f1\lang1033 import 'package:flutter/animation.dart';\par

\pard\sa200\sl276\slmult1\f0\lang9\par

\pard\f1\lang1033 class RailAnimation extends CurvedAnimation \{\par
  RailAnimation(\{required super.parent\})\par
      : super(\par
          curve: const Interval(0 / 5, 4 / 5),\par
          reverseCurve: const Interval(3 / 5, 1),\par
        );\par
\}\par

\pard\sa200\sl276\slmult1\f0\lang9\par
}
 