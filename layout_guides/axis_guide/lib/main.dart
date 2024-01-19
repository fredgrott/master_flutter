// Center of the screen
//    ---------------
//    |             |
//    |             |
//    |             |
//    |             |
//    |     xxxx    |
//    |             |
//    |             |
//    |             |
//    |             |
//    ---------------

/**
 * Material
 */
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}

/**
 * Non-Material
 */
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Center(
        child: Text(
          'Hello World',
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}

// ---------------------------------------

// MainAxisAlignment.start
//    ---------------    ---------------
//    |XXX0000000000|    |X            |
//    |             |    |X            |
//    |             |    |X            |
//    |             |    |0            |
//    |             |    |0            |
//    |             |    |0            |
//    |             |    |0            |
//    |             |    |0            |
//    |             |    |0            |
//    ---------------    ---------------

Row /*or Column*/( 
  mainAxisAlignment: MainAxisAlignment.start,
  children: <Widget>[
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
  ],
)
  
// ---------------------------------------
  
// MainAxisAlignment.center
//    ---------------    --------------
//    |00000XXX00000|    |0            |
//    |             |    |0            |
//    |             |    |0            |
//    |             |    |X            |
//    |             |    |X            |
//    |             |    |X            |
//    |             |    |0            |
//    |             |    |0            |
//    |             |    |0            |
//    ---------------    ---------------
  
Row /*or Column*/( 
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
  ],
),

// ---------------------------------------

// MainAxisAlignment.end
//    ---------------    ---------------
//    |0000000000XXX|    |0            |
//    |             |    |0            |
//    |             |    |0            |
//    |             |    |0            |
//    |             |    |0            |
//    |             |    |0            |
//    |             |    |X            |
//    |             |    |X            |
//    |             |    |X            |
//    ---------------    ---------------

Row /*or Column*/( 
  mainAxisAlignment: MainAxisAlignment.end,
  children: <Widget>[
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
  ],
),

// ---------------------------------------

// MainAxisAlignment.spaceBetween
//    ---------------    ---------------
//    |X00000X00000X|    |X            |
//    |             |    |0            |
//    |             |    |0            |
//    |             |    |0            |
//    |             |    |X            |
//    |             |    |0            |
//    |             |    |0            |
//    |             |    |0            |
//    |             |    |X            |
//    ---------------    ---------------

Row /*or Column*/( 
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: <Widget>[
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
  ],
),

// ---------------------------------------

// MainAxisAlignment.spaceEvenly
//    ---------------    ---------------
//    |00X000X000X00|    |0            |
//    |             |    |0            |
//    |             |    |X            |
//    |             |    |0            |
//    |             |    |X            |
//    |             |    |0            |
//    |             |    |X            |
//    |             |    |0            |
//    |             |    |0            |
//    ---------------    ---------------

Row /*or Column*/( 
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: <Widget>[
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
  ],
),

// ---------------------------------------

// MainAxisAlignment.spaceAround
//    ---------------    ---------------
//    |00X000X000X00|    |0            |
//    |             |    |0            |
//    |             |    |X            |
//    |             |    |0            |
//    |             |    |X            |
//    |             |    |0            |
//    |             |    |X            |
//    |             |    |0            |
//    |             |    |0            |
//    ---------------    ---------------

Row /*or Column*/( 
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: <Widget>[
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
  ],
),

// ---------------------------------------

// CrossAxisAlignment.start
//    ---------------    ---------------
//    |X00000X00000X|    |X000         |
//    |000000X000000|    |0000         |
//    |000000X000000|    |0000         |
//    |000000X000000|    |0000         |
//    |             |    |XXXX         |
//    |             |    |0000         |
//    |             |    |0000         |
//    |             |    |0000         |
//    |             |    |X000         |
//    ---------------    ---------------

Row /*or Column*/( 
  crossAxisAlignment: CrossAxisAlignment.start,
  children: <Widget>[
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 200),
    Icon(Icons.star, size: 50),
  ],
),

// ---------------------------------------

// CrossAxisAlignment.center
//    ---------------    ---------------
//    |000000X000000|    |00X00        |
//    |000000X000000|    |00000        |
//    |X00000X00000X|    |00000        |
//    |000000X000000|    |00000        |
//    |000000X000000|    |XXXXX        |
//    |             |    |00000        |
//    |             |    |00000        |
//    |             |    |00000        |
//    |             |    |00X00        |
//    ---------------    ---------------

Row /*or Column*/( 
  crossAxisAlignment: CrossAxisAlignment.center,
  children: <Widget>[
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 200),
    Icon(Icons.star, size: 50),
  ],
),

// ---------------------------------------

// CrossAxisAlignment.end
//    ---------------    ---------------
//    |000000X000000|    |0000X        |
//    |000000X000000|    |00000        |
//    |000000X000000|    |00000        |
//    |000000X000000|    |00000        |
//    |X00000X00000X|    |XXXXX        |
//    |             |    |00000        |
//    |             |    |00000        |
//    |             |    |00000        |
//    |             |    |0000X        |
//    ---------------    ---------------

Row /*or Column*/( 
  crossAxisAlignment: CrossAxisAlignment.end,
  children: <Widget>[
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 200),
    Icon(Icons.star, size: 50),
  ],
),

// ---------------------------------------

// CrossAxisAlignment.stretch
//    ---------------    ---------------
//    |0000000000000|    |0000000000000|
//    |0000000000000|    |0000000000000|
//    |000000X000000|    |000000X000000|
//    |000000X000000|    |000000X000000|
//    |X00000X00000X|    |0000XXXXX0000|
//    |000000X000000|    |000000X000000|
//    |000000X000000|    |000000X000000|
//    |0000000000000|    |0000000000000|
//    |0000000000000|    |0000000000000|
//    ---------------    ---------------

Row /*or Column*/( 
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: <Widget>[
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 200),
    Icon(Icons.star, size: 50),
  ],
),

// ---------------------------------------

// MainAxisSize.max
//    ---------------    ---------------
//    |XXX0000000000|    |X            |
//    |             |    |X            |
//    |             |    |X            |
//    |             |    |0            |
//    |             |    |0            |
//    |             |    |0            |
//    |             |    |0            |
//    |             |    |0            |
//    |             |    |0            |
//    ---------------    ---------------

Row /*or Column*/( 
  mainAxisSize: MainAxisSize.max,
  children: <Widget>[
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
  ],
),

// ---------------------------------------

// MainAxisSize.min
//    ---------------    ---------------
//    |XXX          |    |X            |
//    |             |    |X            |
//    |             |    |X            |
//    |             |    |             |
//    |             |    |             |
//    |             |    |             |
//    |             |    |             |
//    |             |    |             |
//    |             |    |             |
//    ---------------    ---------------

Row /*or Column*/( 
  mainAxisSize: MainAxisSize.min,
  children: <Widget>[
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
  ],
),

// ---------------------------------------

// IntristicWidth
//    ---------------        ---------------
//    |     XXX     |        |  000XXX000  | 
//    |    XXXXX    |        |  00XXXXX00  |
//    |  XXXXXXXXX  |        |  XXXXXXXXX  |
//    |             |        |             |
//    |             | -----> |             |
//    |             |        |             |
//    |             |        |             |
//    |             |        |             |
//    |             |        |             |
//    ---------------        ---------------    

Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text('IntrinsicWidth')),
    body: Center(
      child: IntrinsicWidth(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            RaisedButton(
              onPressed: () {},
              child: Text('Short'),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text('A bit Longer'),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text('The Longest text button'),
            ),
          ],
        ),
      ),
    ),
  );
}
