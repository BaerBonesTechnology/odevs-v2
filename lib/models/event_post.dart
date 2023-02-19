class EventPost {
  final dynamic date;
  final String title;
  final String link;
  final String? description;

  EventPost({required this.date, required this.title, required this.link, this.description});

  factory EventPost.fromJson(Map<String, dynamic> json) {
    return EventPost(
      date: json['date'],
      title: json['title'],
      link: json['link'],
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'date': date,
      'title': title,
      'link': link,
      'description': description,
    };
  }

  factory EventPost.fromMap(Map<String, dynamic> data) {
    return EventPost(
      date: data['date'],
      title: data['title'],
      link: data['link'],
      description: data['description'],
    );
  }
}
