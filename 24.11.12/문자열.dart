int compress(List<String> chars) {
  int index = 0; // 압축된 문자를 저장할 위치를 가리키는 포인터
  int i = 0;     // chars 리스트를 순회하는 포인터

  // chars 리스트의 끝까지 반복
  while (i < chars.length) {
    String currentChar = chars[i]; // 현재 문자를 저장
    int count = 0; // 현재 문자의 개수를 세기 위한 변수

    // 현재 문자와 같은 문자가 연속으로 몇 개 있는지 세기
    while (i < chars.length && chars[i].equals(currentChar)) {
      i++; // 다음 문자로 이동
      count++; // 개수 증가
    }

    // 현재 문자를 chars 리스트에 저장
    chars[index++] = currentChar;

    // 만약 현재 문자의 개수가 1보다 크면, 개수를 문자열로 변환하여 저장
    if (count > 1) {
      // 개수를 문자열로 변환하고 각 자릿수를 chars 리스트에 저장
      for (var c : Integer.toString(count).toCharArray()) {
        chars[index++] = String.valueOf(c); // 각 자릿수를 리스트에 추가
      }
    }
  }

  // 압축된 길이에 맞게 리스트의 크기를 조정
  chars.length = index; // 새로운 길이로 리스트 크기 조정
  return index; // 압축된 리스트의 길이를 반환
}
