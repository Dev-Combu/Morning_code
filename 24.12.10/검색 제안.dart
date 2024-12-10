List<List<String>> suggestedProducts(List<String> products, String searchWord) {
  // product 를 사전순으로 정렬
  products.sort();

  List<List<String>> result = [];
  String prefix = "";

  for (int i = 0; i < searchWord.length; i++) {
    prefix += searchWord[i];
    List<String> suggestions = [];

    // 접두사가 맞는지 이분 검색
    for (String product in products) {
      if (product.startsWith(prefix)) {
        suggestions.add(product);
      }
      if (suggestions.length == 3) break;
    }

    result.add(suggestions);
  }

  return result;
}
