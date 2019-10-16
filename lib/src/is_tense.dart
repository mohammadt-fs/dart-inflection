import '../inflection2.dart';

bool isPastTense(String word) {
  return word.toLowerCase().trim() == past(word).toLowerCase().trim();
}
