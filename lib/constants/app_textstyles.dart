part of constants;

class AppTextstyles {
  final Color? darkThemeTextColor;
  final Color? lightThemeTextColor;
  final double? myOpacity;
  final String? font;
  final double? fontSize;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  AppTextstyles(
      {this.darkThemeTextColor = Colors.black,
      this.lightThemeTextColor = Colors.white,
      this.myOpacity = 1.0,
      this.font = 'Poppins',
      this.fontSize = 14,
      this.fontWeight = FontWeight.normal,
      this.fontStyle = FontStyle.normal});

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
      fontSize: 24,
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
}
