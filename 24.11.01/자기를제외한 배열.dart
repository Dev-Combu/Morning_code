List<int> productExceptSelf(List<int> nums) {
  int n = nums.length;
  List<int> result = List.filled(n, 1);

  // 왼쪽에서 곱 계산
  int leftProduct = 1;
  for (int i = 0; i < n; i++) {
    result[i] = leftProduct;
    leftProduct *= nums[i];
  }

  // 오른쪽에서 곱 계산
  int rightProduct = 1;
  for (int i = n - 1; i >= 0; i--) {
    result[i] *= rightProduct;
    rightProduct *= nums[i];
  }

  return result;
}


/*

배열에서 i번째의 자신을 제외한 나머지의 곱의 배열을 구하는 문제이다.
답으로는 i번째의 배열을 기준으로 왼쪽의 배열과 오른쪽의 배열을 구하고 각 순서의 요소를 곱해서\
하나의 배열로 만드는 방식을 하고있다.

더 자세하게는 왼쪽의 배열을 만들고나서 오른쪽의 배열값을 왼쪽의 배열값에 곱해서 저장하는 것이다.

*/
