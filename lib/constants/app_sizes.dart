part of constants;

class AppSizes {
  static const LARGE_SIZE = 1280;
  static const DESKTOP_SIZE = 1024;
  static const TABLET_SIZE = 850;
  static const PHONE_SIZE = 550;

  Map<String, Map<String, double>> screenResolutions = {
    'desktop': {'min': 1024, 'max': 2560},
    'tablet': {'min': 768, 'max': 1023},
    'phone': {'min': 320, 'max': 767},
  };
}
