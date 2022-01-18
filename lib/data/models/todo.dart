class Todo {
  int? id;
  String? todo;
  bool? isDone;
  String? description;

  Todo({this.id, this.todo, this.isDone, this.description});

  Todo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    todo = json['todo'];
    isDone = json['isDone'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['todo'] = todo;
    data['isDone'] = isDone;
    data['description'] = description;
    return data;
  }
}