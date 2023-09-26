part of mewnu;

class MewnuText extends Text {
  const MewnuText(
    super.superdata, {
    super.key,
    superstyle,
    superstrutStyle,
    supertextAlign,
    supertextDirection,
    superlocale,
    supersoftWrap,
    superoverflow,
    supertextScaleFactor,
    supermaxLines,
    supersemanticsLabel,
    supertextWidthBasis,
    supertextHeightBehavior,
    superselectionColor,
  });

  const MewnuText.rich(
    super.textSpan, {
    super.key,
    super.style,
    super.strutStyle,
    super.textAlign,
    super.textDirection,
    super.locale,
    super.softWrap,
    super.overflow,
    super.textScaleFactor,
    super.maxLines,
    super.semanticsLabel,
    super.textWidthBasis,
    super.textHeightBehavior,
    super.selectionColor,
  });
}
