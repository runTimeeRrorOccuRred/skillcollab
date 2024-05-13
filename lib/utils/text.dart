class TextUtils {

  static String firstLetterUpperCase(String text) {
    return text[0].toUpperCase() + text.substring(1);
  }

  static String formatNumber(int number) {
    if (number >= 1000000) {
      final double result = number / 1000000.0;
      return '${result.toStringAsFixed(1)}M';
    } else if (number >= 1000) {
      final double result = number / 1000.0;
      return '${result.toStringAsFixed(1)}k';
    } else {
      return number.toString();
    }
  }

}
