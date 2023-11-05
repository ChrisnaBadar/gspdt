part of constants;

class ButtonTheme {
  static ButtonStyle primaryButtonStyle() {
    return ElevatedButton.styleFrom(
      foregroundColor: null,
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      backgroundColor: AppThemes
          .secondaryColorDark, // Set the button's background color to green
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(5.0), // Set the corner radius to 5 pixels
      ),
      elevation: 5, // Set the shadow elevation
      shadowColor: AppThemes.primaryColorLight, // Set the shadow color
    );
  }

  static ButtonStyle secondaryButtonStyle() {
    return ElevatedButton.styleFrom(
      foregroundColor: null,
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      backgroundColor: AppThemes
          .secondaryAccentLight, // Set the button's background color to green
      shape: RoundedRectangleBorder(
        side: BorderSide(color: AppThemes.secondaryColorDark),
        borderRadius:
            BorderRadius.circular(5.0), // Set the corner radius to 5 pixels
      ),
      elevation: 5, // Set the shadow elevation
      shadowColor: AppThemes.secondaryColorDark, // Set the shadow color
    );
  }
}
