class Task {
  final int id;
  final String title;
  final String description;

  Task(this.description, {this.id, this.title});

  Map<String, dynamic> toMap() {
    return {"id": id, "title": title, "description": description};
  }
}
