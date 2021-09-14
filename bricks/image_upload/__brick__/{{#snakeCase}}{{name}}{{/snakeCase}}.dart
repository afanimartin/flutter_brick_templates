/// Pick image as Asset and convert to File for upload
class {{#pascalCase}}{{name}}{{/pascalCase}} {
  const {{#pascalCase}}{{name}}{{/pascalCase}}({@required this.files});

  final List<File> files;

  static Future<List<File>> uploadImage(List<Asset> images) async {
    final appDocDir = await getTemporaryDirectory();
    final appDocPath = appDocDir.path;

    for(var i = 0; i < images.length; i++) {
      final byteData = await images[i].getByteData();

      final tempFile = File('$appDocPath/${images[i].name}');

      final file = await tempFile.writeAsBytes(byteData.buffer.asInt8List(byteData.offsetInBytes, byteData.lengthInBytes));
      files.add(file);
    }

    return files;
  }
}