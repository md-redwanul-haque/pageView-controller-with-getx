class Task{
  final int id;
  final String task;
  final DateTime dateTime;

  Task({required this.id, required this.task, required this.dateTime});

  Map<String, dynamic> toMap(){
    return ({
      "id":id,
      "task":task,
      "creationDate":dateTime.toString(),
    });
  }


}