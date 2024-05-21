class Users {
  final String name;
  final String message;
  final String time;
  final String avatar;
  Users(
      {required this.name,
      required this.message,
      required this.time,
      required this.avatar});
}

List<Users> userList = [
  Users(name: "Aziz", message: 'Hi', time: '10:23:12', avatar: 'A'),
  Users(name: "Kabbo", message: 'kmn asis', time: '10:23:12', avatar: 'A'),
  Users(name: "Sakib", message: 'campus jabi', time: '10:23:12', avatar: 'A'),
  Users(name: "Apurbo", message: 'hello ', time: '10:23:12', avatar: 'A'),
];
