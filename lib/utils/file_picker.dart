// ignore_for_file: use_build_context_synchronously, avoid_redundant_argument_values, prefer_final_locals

import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:skill_colab/utils/utils.dart';


Future<File?> openPickImageModalSheet(BuildContext context) async {
  File? file;

  await showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      builder: (context) => Container(
            decoration: BoxDecoration(
              color: kWhite,
              borderRadius: BorderRadius.circular(30),
            ),
            height: 240,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                const Padding(
                  padding:
                      EdgeInsets.only(left: AppSizes.p16, top: AppSizes.p16),
                  child: Text(
                    "Choose From",
                    style: TextStyle(
                        fontSize: 16,
                        color: primaryColor,
                        fontWeight: FontWeight.bold,),
                  ),
                ),
                // SizedBox(
                //   height: kWidgetSPadding,
                // ),
                SizedBox(
                  height: 50,
                  child: MaterialButton(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    splashColor: primaryColor,
                    onPressed: () async {
                      await pickImage(ImageSource.camera).then((image) async {
                        if (image == null) {
                          // _snackbarService.showSnackbar(
                          //     message: "Image capture failed");
                        } else {
                          file = image;
                          // file = image;
                        }
                      });
                      Navigator.pop(context);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(width: AppSizes.p16),
                        const Icon(Icons.camera_alt, color: primaryColor,),
                        const SizedBox(width: AppSizes.p16),
                        Text(
                          "Camera",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(fontSize: 16, color: primaryColor),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: MaterialButton(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    splashColor: primaryColor,
                    onPressed: () async {
                      await pickImage(ImageSource.gallery).then((image) async {
                        if (image == null) {
                          // _snackbarService.showSnackbar(
                          //     message: "Image capture failed");
                        } else {
                          file = image;
                          // file = image;
                        }
                      });
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: [
                        const SizedBox(width: AppSizes.p16),
                        const Icon(Icons.image, color: primaryColor,),
                        const SizedBox(width: AppSizes.p16),
                        Text(
                          "Gallery",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(fontSize: 16, color: primaryColor),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: AppSizes.p16,
                ),
              ],
            ),
          ),);
  Uint8List? testunit = await file?.readAsBytes();
  // print("Actual file size in byte==" + testunit?.lengthInBytes.toString());
  if (testunit!.lengthInBytes >= 500000) {
    // print("=====ddd $quality");
    // String test = quality.toStringAsFixed(0);
    // int imgQuality = int.parse(test);
    // Uint8List uint8File = await testComporessList(file, 50);
    // print("==After compress 2mb to 6mb" + uint8File.lengthInBytes.toString());
    // print("==File path " + File.fromRawPath(uint8File).toString());
    // return File.fromRawPath(uint8File);
    log("-----$file");
    return file;
    // return compressFile(file, quality);
  } else {
    return file;
  } 
}

Future<File?> openPickVideoModalSheet(BuildContext context) async {
  File? file;
  await showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      builder: (context) => Container(
            height: 240.0,
            decoration: const BoxDecoration(
              borderRadius:  BorderRadius.all(Radius.circular(15)),
            ),
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Padding(
                  padding:
                      EdgeInsets.only(left: AppSizes.p16, top: AppSizes.p16),
                  child: Text(
                    "Choose From",
                    style: TextStyle(
                        fontSize: 16,
                        color: primaryColor,
                        fontWeight: FontWeight.bold,),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: MaterialButton(
                    child: const Row(
                      children: [
                        Icon(Icons.video_call, color: primaryColor,),
                        gapW24,
                        Text(
                          "Camera",
                          style: TextStyle(color: primaryColor),
                        ),
                      ],
                    ),
                    onPressed: () async {
                      await pickVideo(ImageSource.camera).then((video) async {
                        if (video == null) {
                          // _snackbarService.showSnackbar(
                          //     message: "Image capture failed");
                        } else {
                          final int fileSize = video.lengthSync();
                          final double fileSizeInMb = fileSize / (1024 * 1024);
                          Logger.printSuccess(fileSizeInMb.toString());
                          if(fileSizeInMb >= 5) {
                            showDialog(
                              context: context, 
                              builder: (context) {
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                  title: const Text("File too large!"),
                                  content: const Text("Video should be less than 5mb to upload"),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                        Navigator.pop(context);
                                      }, 
                                      child: const Text("Ok", style: TextStyle(color: primaryColor),)
                                    )
                                  ],
                                );
                              },
                            );
                          } else {
                            file = video;
                            Navigator.pop(context);
                          }
                        }
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: MaterialButton(
                    child: const Row(
                      children: [
                        Icon(Icons.photo_library_outlined, color: primaryColor,),
                        gapW24,
                        Text(
                          "Gallery",
                          style: TextStyle(color: primaryColor),
                        ),
                      ],
                    ),
                    onPressed: () async {
                      await pickVideo(ImageSource.gallery).then((video) async {
                        if (video == null) {
                          // _snackbarService.showSnackbar(
                          //     message: "Image capture failed");
                        } else {
                          final int fileSize = video.lengthSync();
                          final double fileSizeInMb = fileSize / (1024 * 1024);
                          Logger.printSuccess(fileSizeInMb.toString());
                          if(fileSizeInMb >= 5) {
                            showDialog(
                              context: context, 
                              builder: (context) {
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                  title: const Text("File too large!"),
                                  content: const Text("Video should be less than 5mb to upload"),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                        Navigator.pop(context);
                                      }, 
                                      child: const Text("Ok", style: TextStyle(color: primaryColor),)
                                    )
                                  ],
                                );
                              },
                            );
                          } else {
                            file = video;
                            Navigator.pop(context);
                          }
                        }
                      });
                    },
                  ),
                ),
              ],
            ),
          ),);
  return file;
}

Future<File?> pickImage(ImageSource source,
    {CameraDevice preferredCameraDevice = CameraDevice.rear,}) async {
  // SnackbarService _snackbarService = locator<SnackbarService>();

  // ignore: deprecated_member_use
  XFile? imagePickedFile = await ImagePicker().pickImage(
      source: source,
      preferredCameraDevice: preferredCameraDevice,
      imageQuality: 50,
      maxHeight: 1280,
      maxWidth: 960,);
  if (imagePickedFile != null) {
    // Uint8List uint8File =
    //     await testComporessList(File(imagePickedFile.path), 50);
    // Uint8List testunit = await imagePickedFile.readAsBytes();
    // print("== Before compress" + testunit.lengthInBytes.toString());
    // print("== After compress" + uint8File.lengthInBytes.toString());

    // final tempDir = await getTemporaryDirectory();
    // final ffile = await new File('${tempDir.path}/image.jpg').create();
    // ffile.writeAsBytesSync(uint8File);
    // if (await File(imagePickedFile.path).length() >= 2097152)
    //   return _snackbarService.showCustomSnackBar(
    //       message: "The File may not be greater than 2 MB.");
    // else
    // print("imagepath " + imagePickedFile.path);
    return File(imagePickedFile.path);

    // print("==Non compress image" + File(imagePickedFile.path).toString());
    // return File.fromRawPath(uint8File);
  } else {
    return null;
  }
}

// Future<File> compressFile(File file, double qlt) async {
//   final filePath = file.absolute.path;
//   // Create output file path
//   // eg:- "Volume/VM/abcd_out.jpeg"
//   final lastIndex = filePath.lastIndexOf(new RegExp(r'.jp'));
//   final splitted = filePath.substring(0, (lastIndex));
//   final outPath = "${splitted}_out${filePath.substring(lastIndex)}";
//   var result = await FlutterImageCompress.compressAndGetFile(
//     file.absolute.path,
//     outPath,
//     quality: qlt.toInt(),
//   );
//   print("Before==" + file.lengthSync().toString());
//   print("After==" + result.lengthSync().toString());
//   return result;
// }

// Future<Uint8List> testComporessList(File file, int quality) async {
//   var result = await FlutterImageCompress.compressWithFile(
//     file.path,
//     minHeight: 300,
//     minWidth: 300,
//     quality: quality,
//   );
//   print('compressedimagesize: ${result.lengthInBytes}-${result.length}');
//   return result;
// }

Future<File?> pickVideo(ImageSource source) async {
  XFile? imagePickedFile = await ImagePicker()
      .pickVideo(source: source, maxDuration: const Duration(seconds: 30));
  if (imagePickedFile != null) {
    return File(imagePickedFile.path);
  } else {
    return null;
  }
}
