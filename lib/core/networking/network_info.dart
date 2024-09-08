import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class NetworkInfo {
  Future<bool> get isConnectedToIntrnet;
}

class NetworkInfoImple implements NetworkInfo {
  final InternetConnectionChecker internetConnectionChecker;

  NetworkInfoImple({required this.internetConnectionChecker});

  @override
  Future<bool> get isConnectedToIntrnet => internetConnectionChecker.hasConnection;
}
