class Todos {
  int userId;
  int id;
  String title;
  bool completed;

  Todos({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  factory Todos.fromJson(Map<String, dynamic> json){
    return Todos(
        userId: json['userId'],
        id: json['id'],
        title: json['title'],
        completed: json['completed']
    );
  }

  static List<Todos> fromList(List<dynamic> data) {
    return data.map((json) => Todos.fromJson(json)).toList();}
}