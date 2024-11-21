class Solution {
  int lengthOfLastWord(String s) {
    List<String> word = s.trim().split(' ').last.split('');
    return word.length;
  }
}

