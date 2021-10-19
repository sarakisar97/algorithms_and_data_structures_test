import 'shared/node.dart';

class Stack{
  Node? _top;

  bool isEmpty() => _top == null;

  int? peek() => _top?.data;

  void push(int data){
    Node node = Node(data);
    node.next = _top;
    _top = node;
  }

  int? pop(){
    int? data = _top?.data;
    _top = _top?.next;
    return data;
  }
}