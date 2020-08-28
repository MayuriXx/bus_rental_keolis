abstract class UseCase<T> {
  Future<T> call([List args = const <dynamic>[]]);
}