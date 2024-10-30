bool isSubsequence(String s, String t) {
  int sIndex = 0;
  int tIndex = 0;

  // 문자열 t를 탐색하며 s의 모든 문자가 순서대로 있는지 확인
  while (sIndex < s.length && tIndex < t.length) {
    if (s[sIndex] == t[tIndex]) {
      sIndex++;
    }
    tIndex++;
  }

  // s의 모든 문자를 찾은 경우 true
  return sIndex == s.length;
}


/*

바로 문자열 t에 문자열 s가 들어가있는지를 확인한다.
그리고 나서 확인하면서 만든 sIndex의 길이가 문자열 s의 길이와 동일하다면
모두 찾은것을 인식해서 true로, 길이다 다르다면 다 찾지 못한것으로 false를 출력한다.

*/