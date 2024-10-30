String reverseVowels(String s) {
  // 모음 리스트
  final vowels = {'a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'};
  
  // 문자열을 리스트로 변환해 수정 가능하게 만듬
  List<String> chars = s.split('');
  
  // 투 포인터 방식으로 앞에서와 뒤에서 모음을 찾아 교체
  int left = 0;
  int right = s.length - 1;
  
  while (left < right) {
    // 왼쪽에서 모음을 찾음
    while (left < right && !vowels.contains(chars[left])) {
      left++;
    }
    
    // 오른쪽에서 모음을 찾음
    while (left < right && !vowels.contains(chars[right])) {
      right--;
    }
    
    // 두 모음을 교환
    if (left < right) {
      String temp = chars[left];
      chars[left] = chars[right];
      chars[right] = temp;
      
      left++;
      right--;
    }
  }
  
  // 리스트를 다시 문자열로 변환
  return chars.join('');
}

/*
문자열 리스트 안에 특정 글자만을 인식하고 역으로 위치를 바꾸기 위해서 처음에는 공통되는 문자를 찾아서 진해하려고 했으나
그러면 다시 문자를 치환해서 넣을때 어려움이 발생할 것으로 생각된다.

위에 정답을 보면 서로 위치가 바뀌어야하는 왼쪽에서의 글자와 오른쪽에서의 글자를 인식하고
서로의 위치에 서로의 글자를 넣는 방식을 사용하고있다.
*/