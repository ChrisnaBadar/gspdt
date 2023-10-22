import 'package:gspdt/constants/constants.dart';

class BlogController {
  List<int> generateUniqueRandomNumbers(int count, int min, int max) {
    if (count >= max - min + 1) {
      // If count is greater than or equal to the range, return all possible numbers.
      return List.generate(max - min + 1, (index) => min + index);
    }

    List<int> randomNumbers = [];
    final random = Random();

    while (randomNumbers.length < count) {
      int randomNumber = random.nextInt(max - min + 1) + min;

      if (!randomNumbers.contains(randomNumber)) {
        randomNumbers.add(randomNumber);
      }
    }

    return randomNumbers;
  }
}
