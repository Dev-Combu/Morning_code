List<List<int>> findDifference(List<int> nums1, List<int> nums2) {
  // 고유한 원소로만 이루어진 집합을 생성
  Set<int> set1 = nums1.toSet();
  Set<int> set2 = nums2.toSet();

  // nums1에만 있는 원소 찾기
  List<int> answer1 = set1.difference(set2).toList();

  // nums2에만 있는 원소 찾기
  List<int> answer2 = set2.difference(set1).toList();

  return [answer1, answer2];
}

/*
배열을 이용하기에 이번에도 list이용하는 방법만을 생각했었다.
그렇지만 중복된 요소가 없이 고유한이라는 설명이 있었다.
그래서 이번에는 set을 사용해야했고 set을 이용한 dirrerence함수를 이용하면 간단하게 풀 수 있는 문제이다.
*/