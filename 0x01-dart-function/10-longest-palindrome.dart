import '9-palindrome.dart';

String longestPalindrome(String s) {
  String longest = '';
  String extracted = '';

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
