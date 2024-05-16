class UserLogin {
  String username;
  String password;

  UserLogin({required this.username, required this.password});

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'password': password,
    };
  }

  @override
  String toString() {
    return 'UserLogin{username: $username,  password: $password';
  }
}
