class Solution {
  List<int> spiralOrder(List<List<int>> matrix) {
    List<int> result = [];

    for(int i=0; i<matrix[0].length; i++){
        result.add(matrix[0][i]);
    }
    result.add(matrix[1].last);
    for(int j=0; j<matrix[2].length; j++){
        List<int> bottom =  matrix[2].reversed.toList();
        result.add(bottom[j]);

    }
    for(int k=0; k<matrix[1].length-1; k++){
        result.add(matrix[1][k]);
    }
    return result;
  }
}