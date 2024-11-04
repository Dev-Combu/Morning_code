class Solution {
  int largestAltitude(List<int> gain) {
    List<int> HG = [0];
    for(int i=0; i<gain.length; i++){
    int a = HG[i]+gain[i];
    HG.add(a);
    print(HG);
    }
    
    int max = HG[0];
    for (var element in HG) {
        if (element > max) {
            max = element;
        }
    }

    return max;
  }
}

/*
고도 0을 기준으로 배열의 요소만큼 고도가 움직이고 HG배열에 움직인 만큼 저장한다.
이후에 HG 배열에 가장 높은 요소를 추출한다.

나는 움직인 높이를 하나의 리스트로 만들고 이를 이요해서 큰값을 구했다.

예시 코드를 보니 리스트를 만드는 과정을 따로 두지 않고 하나로 합쳐서
변화량을 구함과 동시에 서로 비교해서 가장 높은 값만을 남도록 간단하게 만들었다.

다음에는 더 간단하게 구성하도록 해야겠다.

*/