class Constants {
  static const IMAGE_PATH = 'assets/images/';
  static const ICON_PATH = 'assets/icons/';

  static const VISA_LOGO = 'assets/icons/icon-visa.svg';
  static const MASTER_LOGO = 'assets/icons/icon-maestro.svg';

  static const GOOGLE_API_KEY = 'AIzaSyCV-ecjPHCStfz7ym946ZKmxSPVNO4vuU4';

  static String imageAsset(img) => "$IMAGE_PATH$img";
  static String iconAsset(ico) => "$ICON_PATH$ico";
  static String svgAsset(svg) => "assets/svgs/$svg";
}
