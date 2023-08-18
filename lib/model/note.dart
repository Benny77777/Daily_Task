class Note {
  int? id;
  String? title;
  String? content;
  DateTime? modifiedtime;
  Note(
      {required this.id,
      required this.title,
      required this.content,
      required this.modifiedtime});
}

List<Note> sampleNotes = [
  Note(
      id: 0,
      title: 'title',
      content: 'content',
      modifiedtime: DateTime(2023, 1, 4, 16, 23, 43, 2, 3))
];
