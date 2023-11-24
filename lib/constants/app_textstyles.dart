part of constants;

class AppTextstyles {
  final Color? darkThemeTextColor;
  final Color? lightThemeTextColor;
  final double? myOpacity;
  final String? font;
  final double? fontSize;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final double? currentResolution;
  AppTextstyles(
      {this.darkThemeTextColor = Colors.black,
      this.lightThemeTextColor = Colors.white,
      this.myOpacity = 1.0,
      this.font = 'Poppins',
      this.fontSize = 14,
      this.fontWeight = FontWeight.normal,
      this.fontStyle = FontStyle.normal,
      this.currentResolution = 1024});

  //CUSTOM TEXT

  TextStyle customTextLightTheme() {
    return GoogleFonts.getFont(
      font!,
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: lightThemeTextColor!
          .withOpacity(myOpacity!), // Set your desired color
    );
  }

  TextStyle customTextDarkTheme() {
    return GoogleFonts.getFont(
      font!,
      fontSize: fontSize,
      fontWeight: fontWeight,
      color:
          darkThemeTextColor!.withOpacity(myOpacity!), // Set your desired color
    );
  }

  //BUTTON THEME

  TextStyle lightThemeButtonTextStyle() {
    return GoogleFonts.lato(
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      color: lightThemeTextColor!.withOpacity(myOpacity!),
    );
  }

  TextStyle darkThemeButtonTextStyle() {
    return GoogleFonts.lato(
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      color: darkThemeTextColor!.withOpacity(myOpacity!),
    );
  }

  //TEXT THEME

  TextStyle h1Light() {
    return GoogleFonts.getFont(
      font!,
      fontSize: interpolateFontSize(
          AppSizes().screenResolutions['desktop']!['min']!,
          AppSizes().screenResolutions['desktop']!['max']!,
          fontSizes['desktop']!['H1']!['min']!,
          fontSizes['desktop']!['H1']!['max']!,
          currentResolution!),
      fontWeight: FontWeight.bold,
      color:
          darkThemeTextColor!.withOpacity(myOpacity!), // Set your desired color
    );
  }

  TextStyle h2Light() {
    return GoogleFonts.getFont(
      font!,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color:
          darkThemeTextColor!.withOpacity(myOpacity!), // Set your desired color
    );
  }

  TextStyle h3Light() {
    return GoogleFonts.getFont(
      font!,
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color:
          darkThemeTextColor!.withOpacity(myOpacity!), // Set your desired color
    );
  }

  TextStyle subheadingLight() {
    return GoogleFonts.getFont(
      font!,
      fontSize: 18,
      fontWeight: FontWeight.normal,
      color:
          darkThemeTextColor!.withOpacity(myOpacity!), // Set your desired color
    );
  }

  TextStyle paragraphLight() {
    return GoogleFonts.getFont(
      font!,
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color:
          darkThemeTextColor!.withOpacity(myOpacity!), // Set your desired color
    );
  }

  // Dark Theme
  TextStyle h1Dark() {
    return GoogleFonts.getFont(
      font!,
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: lightThemeTextColor!
          .withOpacity(myOpacity!), // Set your desired color
    );
  }

  TextStyle h2Dark() {
    return GoogleFonts.getFont(
      font!,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: lightThemeTextColor!
          .withOpacity(myOpacity!), // Set your desired color
    );
  }

  TextStyle h3Dark() {
    return GoogleFonts.getFont(
      font!,
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: lightThemeTextColor!
          .withOpacity(myOpacity!), // Set your desired color
    );
  }

  TextStyle subheadingDark() {
    return GoogleFonts.getFont(
      font!,
      fontSize: 18,
      fontWeight: FontWeight.normal,
      color: lightThemeTextColor!
          .withOpacity(myOpacity!), // Set your desired color
    );
  }

  TextStyle paragraphDark() {
    return GoogleFonts.getFont(
      font!,
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: lightThemeTextColor!
          .withOpacity(myOpacity!), // Set your desired color
    );
  }

  double interpolateFontSize(double minResolution, double maxResolution,
      double size1, double size2, double currentResolution) {
    if (currentResolution <= minResolution) {
      return size1;
    } else if (currentResolution >= maxResolution) {
      return size2;
    } else {
      // Calculate the percentage of currentResolution between minResolution and maxResolution
      double percentage =
          (currentResolution - minResolution) / (maxResolution - minResolution);

      // Interpolate the font size between size1 and size2 based on the percentage
      double interpolatedSize = size1 + (size2 - size1) * percentage;

      return interpolatedSize;
    }
  }

  Map<String, Map<String, Map<String, double>>> fontSizes = {
    'desktop': {
      'H1': {'min': 24, 'max': 36},
      'H2': {'min': 18, 'max': 24},
      'H3': {'min': 16, 'max': 20},
      'Subheader': {'min': 14, 'max': 18},
      'Paragraph': {'min': 16, 'max': 18},
    },
    'tablet': {
      'H1': {'min': 22, 'max': 30},
      'H2': {'min': 16, 'max': 22},
      'H3': {'min': 14, 'max': 18},
      'Subheader': {'min': 12, 'max': 16},
      'Paragraph': {'min': 14, 'max': 16},
    },
    'phone': {
      'H1': {'min': 20, 'max': 28},
      'H2': {'min': 14, 'max': 20},
      'H3': {'min': 12, 'max': 16},
      'Subheader': {'min': 10, 'max': 14},
      'Paragraph': {'min': 12, 'max': 14},
    },
  };
}
