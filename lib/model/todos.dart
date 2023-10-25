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

  //read data from json
  factory Todos.fromJson(Map<String, dynamic> json){
    return Todos(
        userId: json['userId'],
        id: json['id'],
        title: json['title'],
        completed: json['completed']
    );
  }
  //write data to json
  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "completed": completed,
  };

  //add json data to list
  static List<Todos> fromList(List<dynamic> json) {
    return json.map((json) => Todos.fromJson(json)).toList();}
}