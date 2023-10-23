/*
一个类实现多个接口


mixins:混入功能：类似多继承功能
*/
abstract class A {
  String name = "";
  printA();
}

abstract class B {
  printB();
}

class C with A, B {
  @override
  String name = "";

  @override
  printA() {
    // TODO: implement printA

    print("A");
  }

  @override
  printB() {
    // TODO: implement printB

    return null;
  }
}

void main() {
  C c = new C();
  c.printA();
}
