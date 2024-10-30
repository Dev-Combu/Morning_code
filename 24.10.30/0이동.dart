void moveZeroes(List<int> nums) {
  int lastNonZeroIndex = 0;

  // 모든 비-0 요소를 배열의 앞부분으로 이동
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] != 0) {
      nums[lastNonZeroIndex] = nums[i];
      lastNonZeroIndex++;
    }
  }
	 // [1,3,12,3,12]

  // 나머지 요소를 0으로 설정
  for (int i = lastNonZeroIndex; i < nums.length; i++) {
    nums[i] = 0;
  }
  // [1,3,12,0,0]
}

/*
배열안에 있는 0을 모두 끝으로 이동시키는 문제

위의 코드를 보면 배열안에 있는 0이 아닌 요소들을 배열의 앞으로 이동 시킨 후
이후에 0의 갯수만큼 배열의 끝에 요소를 0으로 바꾼다.
*/