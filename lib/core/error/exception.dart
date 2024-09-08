class CacheException implements Exception {}

class ServerError implements Exception {
}

class EmptyCacheError implements Exception {}

class InputError implements Exception {
  final String message;

  const InputError({required this.message});
}

class OfflineError implements Exception {}
