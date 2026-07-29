double calculateArea(double height, double base) {
  double triangleArea = (height * base) / 2;
  String area2digits = triangleArea.toStringAsFixed(2);
  return(double.parse(area2digits));
}