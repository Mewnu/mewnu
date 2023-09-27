part of mewnu;

class ImagesData {
  final PictureProvider lightLogo;
  final ImageProvider example;

  const ImagesData({
    required this.lightLogo,
    required this.example,
  });

  factory ImagesData.standard() => ImagesData(
        lightLogo: ExactAssetPicture(
          SvgPicture.svgStringDecoderBuilder,
          'assets/icons/logo.svg',
        ),
        example: const AssetImage(
          'assets/images/vehicle/damage/left_front.png',
          package: 'darwinseguros_app',
        ),
      );
}
