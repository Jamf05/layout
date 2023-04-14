import 'package:layout/src/breakpoint.dart';
import 'package:layout/src/format.dart';
import 'package:layout/src/pixel.dart';
import 'package:layout/src/value.dart';

class PhysicalPixelLayoutFormat extends LayoutFormat {
  PhysicalPixelLayoutFormat({
    LayoutValue<double>? margin,
    LayoutValue<double>? gutter,
  })  : this.margin = margin ?? const ConstantLayoutValue(0),
        this.gutter = gutter ?? const ConstantLayoutValue(0);

  @override
  final LayoutPixelFormat pixel = LayoutPixelFormat.physical;

  @override
  final LayoutValue<double> gutter;

  @override
  final LayoutValue<double> margin;

  @override
  final Map<LayoutBreakpoint, double> breakpoints = {
    LayoutBreakpoint.xs: 0,
    LayoutBreakpoint.sm: 414, // QHD
    LayoutBreakpoint.md: 768, // HD
    LayoutBreakpoint.lg: 1080, // FHD
    LayoutBreakpoint.xl: 1440, // 2K
  };

  @override
  final LayoutValue<double> maxWidth = BreakpointValue.all(
    xs: 200,
    sm: 414,
    md: 768,
    lg: 1080,
    xl: 1440,
  );
}