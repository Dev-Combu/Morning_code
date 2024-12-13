class Solution {
  void rotate(List<int> nums, int k) {
    for(int i=0; i<k; i++){
        nums.insert(0, nums.last);
        nums.removeLast();
    }
  }
}