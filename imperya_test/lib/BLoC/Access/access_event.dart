abstract class AccessEvent {}

class LoginEvent extends AccessEvent {
  //login
  final String? email;
  final String? password;
  LoginEvent(this.email, this.password);
}

class RegisterEvent extends AccessEvent {
  //register
  final String? email;
  final String? username;
  final String? password;
  RegisterEvent(this.email, this.username, this.password);
}
