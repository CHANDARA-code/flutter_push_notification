class PushNotification {
  final String? title;
  final String? body;
  final Map<String, dynamic>? data;

  PushNotification({this.title, this.body, this.data});

  factory PushNotification.fromJson(Map<String, dynamic> json) {
    return PushNotification(
      title: json['notification']['title'],
      body: json['notification']['body'],
      data: json['data'],
    );
  }

  @override
  String toString() {
    return 'PushNotification(title: $title, body: $body, data: $data)';
  }
}