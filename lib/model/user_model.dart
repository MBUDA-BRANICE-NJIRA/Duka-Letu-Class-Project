class UserModel {
  final String uid;
  final String email;
  final String role;

  UserModel({required this.uid, required this.email, required this.role});

  factory UserModel.fromDocument(String uid, Map<String, dynamic> doc) {
    return UserModel(
      uid: uid,
      email: doc['email'] ?? '',
      role: doc['role'] ?? 'user',
    );
  }

  Map<String, dynamic> toMap() {
    return {'email': email, 'role': role};
  }
}
