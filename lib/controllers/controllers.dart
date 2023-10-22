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
}
