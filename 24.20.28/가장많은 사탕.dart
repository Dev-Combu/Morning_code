List<bool> kidsWithCandies(List<int> candies, int extraCandies) {
  // 가장 많은 사탕을 가진 아이의 사탕 수를 찾음
  int maxCandies = candies.reduce((a, b) => a > b ? a : b);
  
  // 각 아이가 사탕을 더했을 때 최대 사탕을 가질 수 있는지 확인
  return candies.map((candy) => candy + extraCandies >= maxCandies).toList();
}

/*
reduce, map 함수 둘다 리스트를 이용하는 함수이다.

reduce 함수 : 리스트안에 요소들을 하나의 값으로 만드는데 이용하는 요소이다.
  List<int> numbers = [1, 2, 3, 4];
    int sum = numbers.reduce((a, b) => a + b);

    print(sum); // 10
아마도 처음 두 요소를 a,b에 넣고, 진행한다음 나온 값을 새로운a 다은 요소를 b에 사용하는 느낌?

map 함수 : 리스트의 각 요소에 대해 함수를 적용시키고, 새로운 리스트를 만든다.
List<int> numbers = [1, 2, 3, 4];
  List<int> squares = numbers.map((number) => number * number).toList();

  print(squares); // [1, 4, 9, 16]

이번에도 numbers라는 리스트 안에 요소를 number에 대입시켜서 모든 요소를 다 사용한 함수의 결과를 얻는 것같다.
*/