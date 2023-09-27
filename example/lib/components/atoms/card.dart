import 'package:flutter/material.dart' as material;
import 'package:flutter/widgets.dart';
import 'package:mewnu/mewnu.dart';

extension CardExtension on material.Card {
  material.Card elevated({
    double? elevation,
  }) {
    return copyWith(
      elevation: elevation,
    );
  }

  material.Card outlined({
    ShapeBorder? shape,
  }) {
    return copyWith(
      shape: shape ??
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
            side: BorderSide(
              color: material.Colors.grey.withOpacity(0.2),
              width: 1,
            ),
          ),
      elevation: elevation,
    );
  }
}
