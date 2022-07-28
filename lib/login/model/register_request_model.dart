class RegisterRequestModel {
  String? username;
  String? email;
  String? password;
  String? password2;
  String? first_name;
  String? last_name;

  RegisterRequestModel(
      {this.email,
      this.password,
      this.username,
      this.password2,
      this.first_name,
      this.last_name});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    data['email'] = this.email;
    data['password'] = this.password;
    data['password2'] = this.password2;
    data['first_name'] = this.first_name;
    data['last_name'] = this.last_name;

    return data;
  }
}
