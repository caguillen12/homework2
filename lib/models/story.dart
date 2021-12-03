class TodoField {
  static const createdTime = 'createdTime';
}

class Story {
  DateTime? createdTime;
  String title;
  String? id;
  String subtitle;
  String post;
  bool isDone;

  Story({
    this.createdTime,
    required this.title,
    this.subtitle = '',
    this.post = '',
    this.id,
    this.isDone = false,
  });
}
