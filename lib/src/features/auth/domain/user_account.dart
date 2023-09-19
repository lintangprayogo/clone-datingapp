import 'dart:convert';

class UserAccount {
  final String fullName;
  final String email;
  final String password;
  final String job;
  final String age;
  String? imageProfile;

  UserAccount({
    required this.fullName,
    required this.email,
    required this.password,
    required this.job,
    required this.age,
    this.imageProfile,
  });

  @override
  String toString() {
    return 'UserAccount(fullName: $fullName, email: $email, password: $password, job: $job, age: $age, imageProfile: $imageProfile)';
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'fullName': fullName});
    result.addAll({'email': email});
    result.addAll({'password': password});
    result.addAll({'job': job});
    result.addAll({'age': age});
    if (imageProfile != null) {
      result.addAll({'imageProfile': imageProfile});
    }

    return result;
  }

  factory UserAccount.fromMap(Map<String, dynamic> map) {
    return UserAccount(
        fullName: map['fullName'] ?? '',
        email: map['email'] ?? '',
        password: map['password'] ?? '',
        job: map['job'] ?? '',
        age: map['age'] ?? '',
        imageProfile: map['imageProfile']);
  }

  String toJson() => json.encode(toMap());

  factory UserAccount.fromJson(String source) =>
      UserAccount.fromMap(json.decode(source));

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserAccount &&
        other.fullName == fullName &&
        other.email == email &&
        other.password == password &&
        other.job == job &&
        other.age == age &&
        other.imageProfile == imageProfile;
  }

  @override
  int get hashCode {
    return fullName.hashCode ^
        email.hashCode ^
        password.hashCode ^
        job.hashCode ^
        age.hashCode ^
        imageProfile.hashCode;
  }
}
