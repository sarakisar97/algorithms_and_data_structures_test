class Node{
  Node? next;
  int data;
  Node(this.data);
}

class LinkedList{
  Node? head;

  void append(int data){
    if(head == null){
      head = Node(data);
      return;
    }
    Node current = head!;
    while(current.next != null){
      current = current.next!;
    }
    current.next = Node(data);
  }

  void prepend(int data){
    Node newHead = Node(data);
    newHead.next = head;
    head = newHead;
  }

  void deleteWithValue(int data){
    if (head == null) return;
    if(head!.data == data){
      head = head!.next;
      return;
    }
    Node current = head!;
    while(current.next != null){
      if(current.next!.data == data){
        current.next = current.next!.next;
        return;
      }
      current = current.next!;
    }
  }
}