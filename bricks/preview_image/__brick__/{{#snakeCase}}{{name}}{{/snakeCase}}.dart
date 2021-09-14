/// Preview picked images
class {{#pascalCase}}{{name}}{{/pascalCase}} {
  const {{#pascalCase}}{{name}}{{/pascalCase}}({@required this.images, this.maxImages});

  final List<Asset> images;
  final int maxImages;

  static Future<List<Asset>> previewImage() async {
    final permissionStatus = await Permission.photos.status;

    if (permissionStatus.isGranted) {
      try {
        images = await MultiImagePicker.pickImages(maxImages: maxImages, selectedAssets: images);
      } on Exception catch(_){}
    } else {
      await Permission.photos.request();
    }
  }
}