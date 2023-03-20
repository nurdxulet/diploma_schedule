/// Class to add to API call in order to get `progress` results
class NetworkOptions {
  NetworkOptions({this.onReceiveProgress, this.onSendProgress});
  void Function(int, int)? onReceiveProgress;
  void Function(int, int)? onSendProgress;
}
