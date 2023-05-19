import 'package:layout/src/breakpoint.dart';
import 'package:layout/src/format.dart';
import 'package:layout/src/pixel.dart';
import 'package:layout/src/value.dart';

class PortraitPhysicalPixelLayoutFormat extends LayoutFormat {
  PortraitPhysicalPixelLayoutFormat({
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
    LayoutBreakpoint.xs: 480, // FWVGA
    LayoutBreakpoint.sm: 720, // HD
    LayoutBreakpoint.md: 1080, // FHD
    LayoutBreakpoint.lg: 1125, //  
    LayoutBreakpoint.xl: 1440, // QHD
  };

  @override
  final LayoutValue<double> maxWidth = BreakpointValue.all(
    xs: 480,
    sm: 720,
    md: 1080,
    lg: 1125,
    xl: 1440,
  );
}
