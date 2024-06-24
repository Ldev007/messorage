import 'package:connectivity_plus/connectivity_plus.dart';

class NetworkUtils {
  static List<ConnectivityResult>? _connectivityStatus;

  static init() async {
    _connectivityStatus = await Connectivity().checkConnectivity();
  }

  static bool checkIfOnline({List<ConnectivityResult>? status}) {
    return (status ?? _connectivityStatus)!
            .contains(ConnectivityResult.ethernet) ||
        (status ?? _connectivityStatus)!.contains(ConnectivityResult.mobile) ||
        (status ?? _connectivityStatus)!.contains(ConnectivityResult.vpn) ||
        (status ?? _connectivityStatus)!.contains(ConnectivityResult.wifi);
  }
}
