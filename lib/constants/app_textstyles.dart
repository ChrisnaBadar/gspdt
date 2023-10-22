part of constants;

class AppTextstyles {
  final Color? darkTextColor;
  final Color? lightTextColor;
  final double? myOpacity;
  final String? font;
  final double? fontSize;
  final FontWeight? fontWeight;
  AppTextstyles(
      {this.darkTextColor = Colors.black,
      this.lightTextColor = Colors.white,
      this.myOpacity = 1.0,
      this.font = 'Poppins',
      this.fontSize = 12,
      this.fontWeight = FontWeight.normal});

  TextStyle customText() {
    return GoogleFonts.getFont(
      font!,
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: darkTextColor!.withOpacity(myOpacity!), // Set your desired color
    );
  }

  TextStyle h1Light() {
    return GoogleFonts.getFont(
      font!,
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: darkTextColor!.withOpacity(myOpacity!), // Set your desired color
    );
  }

  TextStyle h2Light() {
    return GoogleFonts.getFont(
      font!,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: darkTextColor!.withOpacity(myOpacity!), // Set your desired color
    );
  }

  TextStyle h3Light() {
    return GoogleFonts.getFont(
      font!,
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: darkTextColor!.withOpacity(myOpacity!), // Set your desired color
    );
  }

  TextStyle subheadingLight() {
    return GoogleFonts.getFont(
      font!,
      fontSize: 18,
      fontWeight: FontWeight.normal,
      color: darkTextColor!.withOpacity(myOpacity!), // Set your desired color
    );
  }

  TextStyle paragraphLight() {
    return GoogleFonts.getFont(
      font!,
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: darkTextColor!.withOpacity(myOpacity!), // Set your desired color
    );
  }

  // Dark Theme
  TextStyle h1Dark() {
    return GoogleFonts.getFont(
      font!,
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: lightTextColor!.withOpacity(myOpacity!), // Set your desired color
    );
  }

  TextStyle h2Dark() {
    return GoogleFonts.getFont(
      font!,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: lightTextColor!.withOpacity(myOpacity!), // Set your desired color
    );
  }

  TextStyle h3Dark() {
    return GoogleFonts.getFont(
      font!,
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: lightTextColor!.withOpacity(myOpacity!), // Set your desired color
    );
  }

  TextStyle subheadingDark() {
    return GoogleFonts.getFont(
      font!,
      fontSize: 18,
      fontWeight: FontWeight.normal,
      color: lightTextColor!.withOpacity(myOpacity!), // Set your desired color
    );
  }

  TextStyle paragraphDark() {
    return GoogleFonts.getFont(
      font!,
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: lightTextColor!.withOpacity(myOpacity!), // Set your desired color
    );
  }
}
