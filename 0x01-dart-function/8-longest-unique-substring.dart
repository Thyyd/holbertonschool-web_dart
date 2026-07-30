String longestUniqueSubstring(String str) {
  String current = '';
  String record = '';
  for (int i = 0; i < str.length; i++) {
    if(current.contains(str[i])) {
      // Réupération de la position où se trouve le caractère pour "couper"
      // la chaîne et ne laisser que ce qu'il y'a après.
      int index = current.indexOf(str[i]);
      current = current.substring(index + 1);
    }
    current += str[i];

    if (current.length > record.length) {
      record = current;
    }
  }

  return (record);
}