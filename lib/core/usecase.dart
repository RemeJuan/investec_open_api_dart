/// Generic UseCase class for when no parameters are required.
abstract class UseCase<Type, Params> {
  Future<Type> call(Params params);
}

class NoParams {}
