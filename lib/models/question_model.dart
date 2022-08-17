class Question {
  //every question will have an Id.
  final String id;

  //every question will have a title, it's the question itself.
  final String title;

  //every question will have options.
  final Map<String, bool> options;

  Question({
    required this.id,
    required this.title,
    required this.options,
  });

  @override
  String toString() {
    return 'Question(id:$id, title:$title, options:$options)';
  }
}
