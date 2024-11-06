ListNode? reverseList(ListNode? head) {
  ListNode? prev = null;
  ListNode? current = head;
  
  while (current != null) {
    ListNode? nextTemp = current.next;  // 다음 노드를 임시 저장
    current.next = prev;                // 현재 노드의 방향을 이전 노드로 변경
    prev = current;                     // 이전 노드를 현재 노드로 이동
    current = nextTemp;                 // 현재 노드를 다음 노드로 이동
  }
  
  return prev;  // 뒤집힌 리스트의 새로운 헤드
}

/*

연결 리스트를 이용한 문제
prev에는 null을 current에는 head는 넣어 초기화

현재의 다음 노드를 nextTemp에 임시로 저장 -> 현재 노드의 방향을 반대, 즉 이전 노드로 변경
  ->이전 노드와 현재노드의 위치를 변경한다.
  
위의 과정으로 반복한다.

*/