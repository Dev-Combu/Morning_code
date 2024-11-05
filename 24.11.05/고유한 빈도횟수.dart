bool uniqueOccurrences(List<int> arr) {
  // 각 원소의 빈도수를 저장하는 Map
  Map<int, int> frequencyMap = {};

  // 빈도수 계산
  for (int num in arr) {
    frequencyMap[num] = (frequencyMap[num] ?? 0) + 1;
  }

  // 빈도 리스트 생성
  List<int> frequencies = frequencyMap.values.toList();

  // 빈도의 고유성 검사
  return frequencies.length == frequencies.toSet().length;
}


/*

각 원소의 중복된 횟수가 각 요소마다 모두 다른 것인가 하는지를 찾아야한다.
우선 Map{}으로 구성한 후 중복되는 횟수를 저장한다.
그리고 횟수를 리스트함수로 그리고 set으로 중복을 확인한다.

*/
