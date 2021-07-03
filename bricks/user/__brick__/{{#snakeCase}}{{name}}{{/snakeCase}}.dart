class {{#pascalCase}}{{name}}{{/pascalCase}} extends Equatable {
  const {{#pascalCase}}{{name}}{{/pascalCase}}({@required this.userId, @required this.displayName, @required this.email, @required this.photoUrl});

  factory {{#pascalCase}}{{name}}{{/pascalCase}}.fromSnapshot(DocumentSnapshot doc) => {{#pascalCase}}{{name}}{{/pascalCase}}(userId: doc.id, displayName: doc['display_name'], email: doc['email'], photoUrl: doc['photo_url']);

  static const empty = UserModel(
    useruserId: '',
    email: '',
    displayName: '',
    photoUrl: '',
  );

  final String userId;
  final String displayName;
  final String email;
  final String photoUrl;

  Map<String, dynamic> toDocument() => {'user_id': userId, 'display_name': displayName, 'email': email, 'photo_url': photoUrl};

  @overruserIde
  List<Object> get props => [userId, displayName, email, photoUrl];
}