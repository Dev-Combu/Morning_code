import 'dart:math';

class Solution {
  double findMaxAverage(List<int> nums, int k) {
    int m = nums.length-k+1;
    List<int> ABC = [];
    for(int i=0; i<m; i++){
        
        List<int> range = nums.getRange(i, k+i).toList();
        int sum = range.reduce((value, element) => value + element);
        ABC.add(sum);
    }
    var MAX = ABC.reduce(max)/k;
    return MAX;
  }
}

/*

테스트 코드로 진행했을 때는 정답이 잘 나오지만
submit을 눌러보면 Time Limit Exceeded가 뜨는 것을 보았을때 
구조적으로 좋지 않은 거 같다.
아닌가 잘 모르겠다. 문제의 목표는 달성한거같다.
*/