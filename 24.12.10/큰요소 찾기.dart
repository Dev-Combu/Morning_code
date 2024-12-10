class Solution {
  int findKthLargest(List<int> nums, int k) {
    nums.sort((a, b) => a.compareTo(b));
    return nums[nums.length-k];
  }
}