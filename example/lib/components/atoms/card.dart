import 'package:flutter/material.dart';
import 'package:mewnu/mewnu.dart';

extension CardExtension on Card {
  Card elevated({
    double? elevation,
  }) {
    return copyWith(
      elevation: elevation,
    );
  }

  Card outlined({
    ShapeBorder? shape,
  }) {
    return copyWith(
      shape: shape ??
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
            side: BorderSide(
              color: Colors.grey.withOpacity(0.2),
              width: 1,
            ),
          ),
      elevation: elevation,
    );
  }
}
