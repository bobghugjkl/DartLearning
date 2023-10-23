//接口定义成抽象类
//主要是定义一个规范，比如定义一个Animal类要求子类必须包含eat方法，这也是多态
//接口：定义一个DB库，支持mysql,mssql,mongodb这三个类里面都有同样的方法，注意：接口要把所有普通类和抽象类都实现一遍
//当然最好抽离一下，这里是为了方便所以没有抽离，使用时要把包的地址引入一下
//要复写抽象类的方法时用extend，如果只是约束使用接口
abstract class Db {
  String uri = ""; //数据库的连接地址
  //当前接口,是一个规范
  add(String date);
  edit();
  delete();
}

class Mysql implements Db {
  @override
  String uri = "";
  Mysql(this.uri);

  @override
  add(String date) {
    // TODO: implement add
    throw UnimplementedError();
    print("这是mysql的add方法");
  }

  @override
  delete() {
    // TODO: implement delete
    throw UnimplementedError();
    return null;
  }

  @override
  edit() {
    // TODO: implement edit
    throw UnimplementedError();
    return null;
  }
}

class MySql implements Db {
  @override
  String uri = "";

  @override
  add(String date) {
    // TODO: implement add
    throw UnimplementedError();
    return null;
  }

  @override
  delete() {
    // TODO: implement delete
    throw UnimplementedError();
    return null;
  }

  @override
  edit() {
    // TODO: implement edit
    throw UnimplementedError();
    return null;
  }
}

abstract class Animal {
  //无法实例化
  eat(); //抽象方法
  printof() {
    print("我是抽象类里面的非抽象方法");
  }
}

class Dog extends Animal {
  @override
  eat() {
    // TODO: implement eat
    print("小狗吃骨头");
  }
}

class Cat extends Animal {
  @override
  eat() {
    // TODO: implement eat
    throw UnimplementedError();
  }
}

main() {
  Dog dog = new Dog();
  dog.eat();
  dog.printof();
  Animal d = new Dog();
  d.eat(); //子类赋值给父类引用，只能用父类的方法
  Mysql mysql = new Mysql("xxx"); //括号里面的是地址
  mysql.uri = "127.0.0.1";
  mysql.add("123456");
}
