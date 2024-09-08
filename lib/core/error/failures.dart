abstract class Failure {}

class OfflineFailure implements Failure {}
class ImageFreeFailure implements Failure {}
class GPTFreeFailure implements Failure {}
class MaxMessageLengthFailure implements Failure {}
class GeminiFreeFailure implements Failure {}

class ServerFailure implements Failure {}

class EmptyCacheFailure implements Failure {}

class CacheFailure implements Failure {}

class InputFailure implements Failure {
  final String message;
  InputFailure(this.message);
}
