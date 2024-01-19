class MyModel {
  const MyModel({ this.value = 0 });

  final int value;

  @override
  bool operator ==(Object other) {
    if (identical(this, other))
      return true;
    if (other.runtimeType != runtimeType)
      return false;
    final MyModel otherModel = other;
    return otherModel.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}