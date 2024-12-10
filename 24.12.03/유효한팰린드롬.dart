class Solution {
  bool isPalindrome(String s) {
    String result = s.toLowerCase().replaceAll(RegExp('[^a-zA-Z0-9가-힣]'), "");
    String reverse = result.split("").reversed.join();


    if(result == reverse){
        return true;
    }else{
        return false;
    }

  }
}

//고차함수를 이용해서 시간이 좀 걸린다는 단점
//찾아보니 정규표현식을 좀 간결하게 하거나 할 수 있을 거같음
//대성님이 추천 한 코드 return result == reverse;