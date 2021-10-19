import 'shared/node.dart';

class LinkedList{
  Node? _head;

  void append(int data){
    if(_head == null){
      _head = Node(data);
      return;
    }
    Node current = _head!;
    while(current.next != null){
      current = current.next!;
    }
    current.next = Node(data);
  }

  void prepend(int data){
    Node newHead = Node(data);
    newHead.next = _head;
    _head = newHead;
  }

  void deleteWithValue(int data){
    if (_head == null) return;
    if(_head!.data == data){
      _head = _head!.next;
      return;
    }
    Node current = _head!;
    while(current.next != null){
      if(current.next!.data == data){
        current.next = current.next!.next;
        return;
      }
      current = current.next!;
    }
  }
}