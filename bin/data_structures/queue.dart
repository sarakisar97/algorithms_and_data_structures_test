import 'shared/node.dart';

class Queue{
  Node? _head; // remove from the head
  Node? _tail; // add things here

  bool isEmpty() => _head == null;

  int? peek() => _head?.data;

  void add(int data){
    Node node = Node(data);
    if(_tail != null){
      _tail!.next = node;
    }
    _tail = node;
    _head ??= node;
  }

  int? remove(){
    int data = _head!.data;
    _head = _head?.next;
    if(_head == null){
      _tail = null;
    }
    return data;
  }
}