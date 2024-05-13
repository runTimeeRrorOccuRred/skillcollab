import 'dart:developer';
import 'package:image_picker/image_picker.dart';

class ImageMethod {
  final ImagePicker _picker = ImagePicker();

  Future<String>? selectImage({required ImageSource imageSource}) async {
    final XFile? selectedImage = await _picker.pickImage(source: imageSource);
    if(selectedImage != null) {
      log(selectedImage.path);
      return selectedImage.path;
    }    
    return "No Image";
  }
}
