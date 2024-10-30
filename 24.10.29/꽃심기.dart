class Solution {
  bool canPlaceFlowers(List<int> flowerbed, int n) {
    var filterList = flowerbed.where((e)=>e!=1);
    print(filterList);
    if (filterList.length>1 && n*2+1==filterList.length){
        return true;
    }else
        return false;
  }
}

/*

예시에 다온 답은 해결할 수 있게 짰지만, 0의 위치가 연속적이지않고
처음과 끝에 글고 영 사이에 1이 있는 경우에는 정확한 답을 도출 할 수 없는 문제가 있는 코드이다.

*/