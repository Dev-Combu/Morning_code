class Solution {
  bool increasingTriplet(List<int> nums) {
    bool some = true;
    for(int i=0; i<nums.length; i++){
        int first = nums[i];
        int second = nums[i+1];
        int third = nums[i+2];
        
        if(first<second){
            if(second<third){
                some = true;
            }
        }else{
            some =  false;
        }
        return some;
    }
    return some;
  }
}

/*
테스트 케이스 1,2에서는 작동이 잘 되는것같지만 3에서 진행이 안됨
*/