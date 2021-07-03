class {{#pascalCase}}{{name}}{{/pascalCase}} extends Equatable {
  const {{#pascalCase}}{{name}}{{/pascalCase}}({@required this.id, @required this.displayName, @required this.email, @required this.photoUrl});

  final String id;
  final String displayName;
  final String email;
  final String photoUrl;

  factory {{#pascalCase}}{{name}}{{/pascalCase}}.fromSnapshot(DocumentSnapshot doc) => {{#pascalCase}}{{name}}{{/pascalCase}}(id: doc.id, displayName: doc['display_name'], email: doc['email'], photoUrl: doc['photo_url']);

  Map<String, dynamic> toDocument() => {'id': id, 'display_name': displayName, 'email': email, 'photo_url': photoUrl};

  @override
  List<Object> get props => [id, displayName, email, photoUrl];
}