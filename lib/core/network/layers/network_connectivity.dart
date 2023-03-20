import 'dart:io';

class NetworkConnectivity {
  /// Get network status from pinging google.com,
  /// returns either `true` or `false`
  Future<bool> get status async {
    try {
      final result = await InternetAddress.lookup('google.com');

      return result.isNotEmpty && result.first.rawAddress.isNotEmpty;
    } on SocketException {
      return false;
    }
  }
}
