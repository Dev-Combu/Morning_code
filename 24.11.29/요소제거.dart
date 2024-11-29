class Solution {
  int removeElement(List<int> nums, int val) {
    nums.removeWhere((number) => number == val);

    return nums.length;
  }
}