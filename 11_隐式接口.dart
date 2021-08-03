class Runner {
  run() {
    print("running");
  }
}

abstract class Fly {
  fly();
}

class SuperPerson implements Runner, Fly {
  @override
  run() {
    // 实现接口的方法不可以调用super
    // 报错：The method 'run' is always abstract in the supertype.
    // super.run();
    print('自由自在的奔跑');
  }

  @override
  fly() {
    print('起飞');
  }
}
