String reverseWords(String s) {
  // 문자열을 공백을 기준으로 나누고, 공백이 아닌 부분만 필터링
  List<String> words = s.trim().split(' ').where((word) => word.isNotEmpty).toList();
  
  // 단어의 순서를 뒤집고 다시 공백으로 연결
  return words.reversed.join(' ');
}


/*

문자열을 거꾸로 바꾸는 방법으로 쉽게 단어를 인식하고, reverse함수를 통해서 진행하면
쉽게 할 수 있다. 
이때 단어를 인식해서 배열을 구성하는게 중요한다. 단어 공백을 split으로 인식해서 나누면 된다.

*/