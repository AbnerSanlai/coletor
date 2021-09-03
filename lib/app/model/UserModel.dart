class UserModel {
  UserModel({
    required this.widget,
  });
  late final Widget widget;

  UserModel.fromJson(Map<String, dynamic> json) {
    widget = Widget.fromJson(json['widget']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['widget'] = widget.toJson();
    return _data;
  }
}

class Widget {
  Widget({
    required this.window,
  });
  late final Window window;

  Widget.fromJson(Map<String, dynamic> json) {
    window = Window.fromJson(json['window']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['window'] = window.toJson();
    return _data;
  }
}

class Window {
  Window({
    required this.title,
    required this.name,
    required this.width,
    required this.height,
  });
  late final String title;
  late final String name;
  late final int width;
  late final int height;

  Window.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    name = json['name'];
    width = json['width'];
    height = json['height'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['title'] = title;
    _data['name'] = name;
    _data['width'] = width;
    _data['height'] = height;
    return _data;
  }
}
