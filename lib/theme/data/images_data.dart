part of mewnu;

class MewnuImagesData {
  final PictureProvider lightLogo;
  final ImageProvider example;

  const MewnuImagesData({
    required this.lightLogo,
    required this.example,
  });

  factory MewnuImagesData.standard() => MewnuImagesData(
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
