


/// Enum representing the possible layouts in the responsive UI design.
enum WindowSizeEnum {
  /// The compact layout, for screens with width less than 600 pixels.
  compact(0, 600),

  /// The medium layout, for screens with width between 600 and 840 pixels.
  medium(600, 840),

  /// The extended layout, for screens with width greater than 840 pixels.
  expanded(840, 1239),

  /// per this https://m3.material.io/components/navigation-drawer/guidelines
  /// there is actually one more virtual window class size
  /// as there is no nav rail for desktop but instead standard nav drawers
  evel(1240, double.infinity);

  /// The beginning of the range of screen widths for this layout.
  final double? begin;

  /// The end of the range of screen widths for this layout.
  final double? end;

  /// Creates a new [WindowSizeEnum] with the given [begin] and [end] values.
  const WindowSizeEnum(this.begin, this.end);
}
