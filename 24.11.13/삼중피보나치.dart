class Solution {
  int tribonacci(int n) {
    List<int> tNumber = [0,1,1];
    for(int i=3; i<=n; i++){
        int iNumber = tNumber[i-3]+tNumber[i-2]+tNumber[i-1];
        tNumber.add(iNumber);
        print(iNumber);
    }
    return tNumber[n];
  }
}