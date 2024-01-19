class CounterModel {
  CounterModel({this.value = 0});

  int value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CounterModel &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  String toString() {
    return '${describeIdentity(this)}{$value}';
  }
}