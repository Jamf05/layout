import 'package:layout/src/breakpoint.dart';
import 'package:layout/src/format.dart';
import 'package:layout/src/pixel.dart';
import 'package:layout/src/value.dart';

class LandscapePhysicalPixelLayoutFormat extends LayoutFormat {
  LandscapePhysicalPixelLayoutFormat({
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
    LayoutBreakpoint.xs: 854, // FWVGA
    LayoutBreakpoint.sm: 1280, // HD
    LayoutBreakpoint.md: 1920, // FHD
    LayoutBreakpoint.lg: 2436, //
    LayoutBreakpoint.xl: 2960, // QHD
  };

  @override
  final LayoutValue<double> maxWidth = BreakpointValue.all(
    xs: 854,
    sm: 1280,
    md: 1920,
    lg: 2436,
    xl: 2960,
  );
}
