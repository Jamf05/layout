import 'package:flutter/material.dart';

class PhysicalVSLogicalLayoutBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Theme(
      data: ThemeData.dark(),
      child: Material(
        child: SafeArea(
          minimum: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Physical\n${mediaQuery.size * mediaQuery.devicePixelRatio}',
                      maxLines: 2,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Logical\n${mediaQuery.size}',
                      maxLines: 2,
                      textAlign: TextAlign.end,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
