int pivotIndex(List<int> nums) {
  int totalSum = nums.reduce((a, b) => a + b);
  int leftSum = 0;

  for (int i = 0; i < nums.length; i++) {
    int rightSum = totalSum - leftSum - nums[i];
    if (leftSum == rightSum) {
      return i;
    }
    leftSum += nums[i];
  }

  return -1;
}

/*
i번째 인덱스를 기준으로 왼쪽과 오른쪽의 요소들의 합이 같아지는 때의 같은 값을 찾는방법
오른쪽을 (전체의 합 - 왼쪽의합 + i번째 요소)로 만들고 나서 왼쪽과 오른쪽이 같을때의 값을 조건문으로 확인한다.
이때 값이 같은 경우가 없으면 -1을 출력한다. 
*/