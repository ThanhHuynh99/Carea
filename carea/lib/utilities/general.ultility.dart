class GeneralUtility {
  int getColorFromHex(String color) {
    String hexColor = color.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }
}
