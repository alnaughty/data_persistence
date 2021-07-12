class User{
  final int id;
  final String name;
  final String email;
  final List<Manual> password;
  User({this.id, this.name, this.email, this.password});
  User.fromData(Map<String, dynamic> data) :
      id = data['id'],
      name = data['name'],
      email = data['email'],
      password = data['password'].map((e) => Manual.fromData(e));

  Map<String, dynamic> toJson() => {
    'id' : id,
    'name' : name,
    'email' : email,
    'password' : password
  };
}


class Manual{
  final int id;
  final String name;
  Manual({this.id, this.name});
  Manual.fromData(Map<String, dynamic> data) :
      id = data['id'],
      name = data['name'];
  Map<String, dynamic> toJson() => {
    'id' : id,
    'name' : name
  };
}