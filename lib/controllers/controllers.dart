import 'package:gspdt/constants/constants.dart';

class Controllers {
  List<int> generateCaccList(int itemCount, List pattern) {
    List<int> result = [];

    int patternIndex = 0;
    int patternLength = pattern.length;

    for (int i = 0; i < itemCount; i++) {
      result.add(pattern[patternIndex]);
      patternIndex = (patternIndex + 1) % patternLength;
    }

    return result;
  }

  List<int> generateMaccList(int itemCount, List pattern) {
    List<int> result = [];

    int patternIndex = 0;
    int patternLength = pattern.length;

    for (int i = 0; i < itemCount; i++) {
      result.add(pattern[patternIndex]);
      patternIndex = (patternIndex + 1) % patternLength;
    }

    return result;
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

  int calculateFlex(double resolution) {
    if (resolution <= 500) {
      return 100;
    } else if (resolution >= 1280) {
      return 5;
    } else {
      double fraction = (resolution - 500) / (1280 - 500);
      int result = (95 - fraction * 95 + 5).round();
      return result;
    }
  }

  List<int> generateRandomInts(int maxValue) {
    Random random = Random();
    List<int> randomInts = [];

    for (int i = 0; i < 3; i++) {
      randomInts.add(random.nextInt(maxValue));
    }

    return randomInts;
  }
}
