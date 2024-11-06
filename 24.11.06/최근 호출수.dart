import 'dart:collection';

class RecentCounter {
  Queue<int> queue = Queue<int>();

  RecentCounter();

  int ping(int t) {
    queue.add(t);
    
    // 큐의 첫 번째 요소가 범위에 속하지 않으면 제거
    while (queue.isNotEmpty && queue.first < t - 3000) {
      queue.removeFirst();
    }

    // 큐의 길이가 호출 횟수
    return queue.length;
  }
}

/*

먼저 큐를 만들어준다. 큐는 두개의 입구 모두 입력과 출력이 가능한 형태를 말한다.
RecnetCounter()는 큐를 초기화하는 생성자이다.

함수 ping은 큐에 t를 추가하고 조건이 만족하면 첫번째 큐 요소를 제거한 이후에 큐의 길이를 호출

*/