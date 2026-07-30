import '9-palindrome.dart';

String longestPalindrome(String s) {
  String longest = '';
  String extracted = '';

  // Génération de toutes les sous-chaînes possibles pour vérifier s'il y'a des palindromes et ne renvoyer que le plus long.
  for (int i = 0; i < s.length; i++) {
    for (int j = i+1; j <= s.length; j++) {
      extracted = s.substring(i, j);

      if (isPalindrome(extracted) && extracted.length > longest.length) {
        longest = extracted;
      }
    }
  }

  return(longest == '' ? 'none' : longest);
}
