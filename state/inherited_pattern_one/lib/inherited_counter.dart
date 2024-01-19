class InheritedCounter extends StatefulWidget {
  const InheritedCounter({
    super.key,
    required this.child,
  });

  final Widget child;

  static InheritedCounterState of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<_InheritedCounterScope>()!
        .state;
  }

  @override
  State<InheritedCounter> createState() => InheritedCounterState();
}

class InheritedCounterState extends State<InheritedCounter> {
  var counter = CounterModel();

  void add() {
    setState(() {
      counter.value++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _InheritedCounterScope(
      state: this,
      counter: counter,
      child: widget.child,
    );
  }
}

class _InheritedCounterScope extends InheritedWidget {
  _InheritedCounterScope({
    required this.state,
    required this.counter,
    required super.child,
  }) : value = counter.value;

  final InheritedCounterState state;
  final CounterModel counter;
  late final int value;

  @override
  bool updateShouldNotify(_InheritedCounterScope oldWidget) {
    print('counter value $value');
    print('oldWidget value ${oldWidget.value}');
    return value != oldWidget.value;
  }
}