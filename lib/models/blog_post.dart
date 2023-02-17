class BlogPost {
  final String title;
  final String body;
  final String author;
  final String date;
  final List<String?>? tags;
  bool approved;

  BlogPost({required this.title, required this.body, required this.author, required this.date, this.tags, this.approved = false});

  // TODO(create function to make a blog post from a json object in markdown format)

}