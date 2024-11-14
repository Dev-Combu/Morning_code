class Solution {
  String removeStars(String s) {
    List<String> alpha = s.split('').toList();
    for(int i=0; i<alpha.length; i++){
        if(alpha[i]=='*'){
            alpha.setAll(i-1,);
            alpha.removeAt(i-1);
            alpha.removeAt(i);
        }
    }
    print(alpha);
    return s;
  }
}

/*

문자 s를 리스트로 만들고 나서 반복문을 돌려 문자를 제거할려고 시도 하였다.
하지만 문자를 제거할때 별이 연속으로 있으면 두번째부터 제대로 앞의 문자를 인식해서 제거가
불가능한 문제가 있었다.

해설을 보니 처음부터 리스트를 만들고 진행하는것이ㅏ 아니라, 빈 리스트를 만들고
*문자가 없는 문자만 리스트에 추가하는 방식으로 진행했다.

*/