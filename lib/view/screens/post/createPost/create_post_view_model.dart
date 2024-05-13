// import 'package:dio/dio.dart';
// ignore_for_file: avoid_dynamic_calls, avoid_print, avoid_positional_boolean_parameters, prefer_const_constructors

import 'dart:io';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:giphy_get/giphy_get.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image/image.dart' as img;
import 'package:path_provider/path_provider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:skill_colab/core/api_client.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/interests/get_interests_repo_impl.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';
import 'package:skill_colab/data/remote/posts/addTags/add_tags_repo_impl.dart';
import 'package:skill_colab/data/remote/posts/addTags/models/add_tags_repo_model.dart';
import 'package:skill_colab/data/remote/posts/createPost/create_post_repo_impl.dart';
import 'package:skill_colab/data/remote/posts/createPost/models/create_post_model.dart';
import 'package:skill_colab/data/remote/posts/getPosts/models/get_posts_user_id_model.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/helpers/base_view_model.dart';
import 'package:skill_colab/utils/logger.dart';
import 'package:skill_colab/utils/snackback.dart';
import 'package:skill_colab/view/screens/profile/userProfile/user_profile_view_model.dart';
import 'package:uuid/uuid.dart';
import 'package:video_player/video_player.dart';

final createPostViewModel = ChangeNotifierProvider((ref) => CreatePostViewModel(ref: ref));

class CreatePostViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  CreatePostViewModel({required this.ref});

  final CreatePostRepoImpl _createPostRepoImpl = CreatePostRepoImpl();
  final GetInterestsRepoImpl _getInterestsRepoImpl = GetInterestsRepoImpl();

  /// DATA MEMBERS
  
  double _lat = 0;
  double _long = 0;
  late String checkInImageId;
  CameraPosition _groupLocation = const CameraPosition(target: LatLng(22.57456610758227, 88.43059525421059), zoom: 1,);
  ScreenshotController screenshotController = ScreenshotController();
  GetInterestsResponseModel _getInterestsResponseModel = const GetInterestsResponseModel();

  File _postImage = File("null");
  String _postImageUrl = "";
  bool _postImageLoading = false;  

  File _checkInImage = File("null");
  String _checkInImageUrl = "";
  bool _checkInImageLoading = false;  

  File _postVideo = File("null");
  String _postVideoUrl = "";
  bool _postVideoLoading = false; 
  VideoPlayerController _controller = VideoPlayerController.networkUrl(Uri.parse("https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4"));

  String _colorcode = ""; 
  String _locationData = "";


  List<Interest> _interest = [];
  CreatePostResponseModel _createPostResponseModel = CreatePostResponseModel();
  CreatePostResponseModel get createPostResponseModel => _createPostResponseModel;

  /// GETTERS
  double get lat => _lat;
  double get long => _long;
  CameraPosition get groupLocation => _groupLocation;

  File get postImage => _postImage;
  String get postImageUrl => _postImageUrl;
  bool get postImageLoading => _postImageLoading;  

  File get checkInImage => _checkInImage;
  String get checkInImageUrl => _checkInImageUrl;
  bool get checkInImageLoading => _checkInImageLoading; 

  File get postVideo => _postVideo;
  String get postVideoUrl => _postVideoUrl;
  bool get postVideoLoading => _postVideoLoading; 

  String get colorcode => _colorcode; 
  VideoPlayerController get controller => _controller;
    
  String get locationData => _locationData;

  List<Interest> get interest => _interest;
  GetInterestsResponseModel get getInterestsResponseModel => _getInterestsResponseModel;

  final AddTagsRepoImpl _addTagsRepoImpl = AddTagsRepoImpl();
  AddTagsResponseModel? addTagsResponse;
  AddTagsResponseModel? get getaddTagsResponse => addTagsResponse;

  


  /// SETTERS
  void setPostImage(File image) {
    _postImage = image;
    notifyListeners();
  }
  
  void setCheckInImage(File image) {
    _checkInImage = image;
    notifyListeners();
  }

  void setInterest(List<Interest> interest){
    _interest = interest;
    notifyListeners();
  }

  void setLocation(String data) {
    _locationData = data;
    notifyListeners();
  }

  void removePostImage() {
    _postImage = File("null");
    _postImageUrl = "";
    notifyListeners();
  }
  
  void removeLocationData() {
    _locationData = "";
    _checkInImageUrl = "";
    _checkInImage = File("null");
    _checkInImageLoading = false;
    screenshotController = ScreenshotController();
    notifyListeners();
  }

  void setPostVideo(File video) {
    _postVideo = video;
    _controller = VideoPlayerController.file(video)..initialize()..play()..setLooping(true);
    notifyListeners();
  }

  void removePostVideo() {
    _controller.dispose();
    _postVideo = File("null");
    _postVideoUrl = "";
    notifyListeners();
  }

  void setColorCode(String color){
    _colorcode = color;
    notifyListeners();
  }

  void disposeController() {
    _controller.dispose();
    _postVideo = File("null");
    _postVideoUrl = "";
    _postVideoLoading = false; 
    // _controller = VideoPlayerController.networkUrl(Uri.parse("https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4"));
  }

  // void control(){
  //   if(_postVideoLoading){
  //     _controller = VideoPlayerController.file(postVideo);
  //   }else{
  //     _controller = VideoPlayerController.networkUrl(Uri.parse(postVideoUrl));
  //   }
  //   notifyListeners();
  // }

  /// OTHER METHODS
  Future<void> createPost(BuildContext context, CreatePostRequestModel createPostRequestModel) async {
    toggleLoading();
    _createPostRepoImpl.createPost(createPostRequestModel).then((value) {
      toggleLoading();
      return value.fold(
        (l) {
          showCustomSnackBar(context, text: "${l.message}\nPlease try again", color: Colors.red);
          // context.pop();
        }, 
        (r) {
          showCustomSnackBar(context, text: "Post Uploaded Sucessfully", color: Colors.green);
          _controller.dispose();
          context.pop();
        }
      );
    });  
  }



  Future<void> createUserPost(BuildContext context, CreateUserPostRequestModel createUserPostRequestModel) async {
    toggleLoading();
    _createPostRepoImpl.createUserPost(createUserPostRequestModel).then((value) {
      toggleLoading();
      return value.fold(
        (l) {
          showCustomSnackBar(context, text: "${l.message}\nPlease try again", color: Colors.red);
          // context.pop();
        }, 
        (r) {
          _createPostResponseModel = r;
          clearAllData();
          ref.read(userProfileViewModel).getPostsByUserId(context, const GetPostsByUserIdRequestModel(searchKey: "", interests: "", timeFilter: "allTime", privacy: "public"), ref.read(userProfileViewModel).singleUserResponseModel.data?.id ?? '');
          showCustomSnackBar(context, text: "User Post Uploaded Sucessfully", color: Colors.green);
          _controller.dispose();
          context.pop();
        }
      );
    });  
  }

  Future<List<String>> fetchLocationSuggestions(String query) async {
    // make a url for google places autocomplete and pass the query and show only
    final String apiUrl =
        "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$query&key=AIzaSyBnW4iG_nYqaUctsyR7TzkMy8WPAHSLx14";

    // 'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$query&key=$apiKey';

    final response = await Dio().get(apiUrl);

    Logger.printSuccess(response.data.toString());

    if (response.statusCode == 200) {
      final data = response.data;
      if (data['status'] == 'OK') {
        final predictions = data['predictions'];
        final List<String> suggestions = [];
        for (var i = 0; i < predictions.length; i++) {
          suggestions.add(predictions[i]['description']);
        }

        return suggestions;
      }
    }
    return [];
  }

  Future<void> captureAndSaveScreenshot(BuildContext context, GiphyGif? currentGif, String groupId, String desc, List<Interest> interests, String privacy, List<String> hashtags) async {
    _checkInImageLoading = true;
    try {
      screenshotController.capture().then((Uint8List? uint8list) async {
        if(uint8list != null){
          final img.Image image = img.decodeImage(uint8list)!;
          final Uint8List jpgImage = img.encodeJpg(image).buffer.asUint8List();
          checkInImageId = const Uuid().v4();
          // Logger.printSuccess(jpgImage.toString());
          try {
            final Directory tempDir = await getTemporaryDirectory();
            final File file = await File('${tempDir.path}/image$checkInImageId.jpg').writeAsBytes(jpgImage);
            Logger.printSuccess(file.path);
          await  uploadCheckInImage(false, file.path, file.path).then((value) {
                     if(groupId == "null" || groupId.isEmpty){
                      final CreateUserPostRequestModel createUserPostRequestModel = CreateUserPostRequestModel(
                        postImage: postImageUrl.isEmpty ? "" : postImageUrl, 
                        title: "test", 
                        description: desc, 
                        isActive: true,
                        privacy: privacy,
                        interests: interests,
                        checkIn: locationData.isEmpty ? "" : locationData,
                        checkInImage: checkInImageUrl.isEmpty ? "" : checkInImageUrl,
                        bgColor: colorcode.isEmpty ? "" : colorcode,
                        gif: currentGif != null ? "https://i.giphy.com/media/${currentGif.id}/200.gif" : "",
                        videoUrl: postVideoUrl.isEmpty ? "" : postVideoUrl,
                      );
                      Logger.printError(createUserPostRequestModel.toString());
                      createUserPost(context, createUserPostRequestModel).then((value) {
                        // Future.delayed(duration)
                        Future.delayed(Duration(seconds: 3), () {});
                          final AddTagsResquestModel addTagsResquestModel = AddTagsResquestModel(
                          postId: createPostResponseModel.data?.id,
                          tag: hashtags,
                        );
                        Logger.printSuccess(addTagsResquestModel.toString());
                        addTags(context, addTagsResquestModel);
                      });
                    } else {
                      final CreatePostRequestModel createPostRequestModel = CreatePostRequestModel(
                        postImage: postImageUrl.isEmpty ? "" : postImageUrl, 
                        title: "test", 
                        description: desc, 
                        groupId: groupId, 
                        isActive: true,
                        privacy: privacy,
                        checkIn: locationData.isEmpty ? "" : locationData,
                        checkInImage: checkInImageUrl.isEmpty ? "" : checkInImageUrl,
                        interests: interests,
                        bgColor: colorcode.isEmpty ? "" : colorcode,
                        gif: currentGif != null ? "https://i.giphy.com/media/${currentGif.id}/200.gif" : "",
                        videoUrl: postVideoUrl.isEmpty ? "" : postVideoUrl,
                      );
                      Logger.printError(createPostRequestModel.toString());
                      createPost(context, createPostRequestModel).then((value) {
                        Future.delayed(Duration(seconds: 3), () {});
                          final AddTagsResquestModel addTagsResquestModel = AddTagsResquestModel(
                          postId: createPostResponseModel.data?.id,
                          tag: hashtags,
                        );
                        Logger.printSuccess(addTagsResquestModel.toString());
                        addTags(context, addTagsResquestModel);

                      });
                    }
                     
                    
            });
            Logger.printWarning(checkInImageUrl);
          } catch(e) {
            Logger.printError(e.toString());
          }
          notifyListeners();
        }
      });
    } catch (e) {
      print('Error capturing or saving screenshot: $e');
    }
  }




  Future<void> uploadImage(bool isCoverPhoto, String imagePath, String imageName) async {
    _postImageLoading = true;
    notifyListeners();

    final FormData formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(
        imagePath,
        filename: imageName,
      ),
    });

    try {
      final Response response = await Dio().post(
        '${AppConstants.baseUrl}group/upload',
        data: formData,
      );
      Logger.printSuccess(response.data.toString());

      _postImageLoading = false;
      _postImageUrl = response.data['data'];
      notifyListeners();

    } catch(e) {
      Logger.printError(e.toString());
    }
  }
  
  Future<void> uploadCheckInImage(bool isCoverPhoto, String checkInPath, String checkInName) async {
    // _checkInImageLoading = true;
    notifyListeners();

    final FormData formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(
        checkInPath,
        filename: checkInName,
      ),
    });

    try {
      final Response response = await Dio().post(
        '${AppConstants.baseUrl}group/upload',
        data: formData,
      );
      Logger.printSuccess(response.data.toString());
      _checkInImageLoading = false;
      _checkInImageUrl = response.data['data'];
      notifyListeners();

    } catch(e) {
      Logger.printError(e.toString());
    }
  }


  Future<void> uploadVideo(String videoPath, String videoName) async {
    _postVideoLoading = true;
    notifyListeners();

    final FormData formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(
        videoPath,
        filename: videoName,
      ),
    });
    // control();
    try {
      final Response response = await Dio().post(
        '${AppConstants.baseUrl}group/upload',
        data: formData,
      );
      Logger.printSuccess(response.data.toString());

      _postVideoLoading = false;
      _postVideoUrl = response.data['data'];
      Logger.printSuccess(response.data['data']);
      notifyListeners();
    } catch(e) {
      _postVideoLoading = false;
      notifyListeners();
      Logger.printError(e.toString());
    }
  }

  Future<void> getLatLong(String query) async {

    toggleLoading();
    notifyListeners();

    final String address = query.split(" ").join("%20");
    // address = address.split(',').join();

    Logger.printWarning(query);
    Logger.printWarning(address);

    try {
      final response = await ApiClient().get(
        "https://maps.googleapis.com/maps/api/geocode/json?address=$address&key=AIzaSyBnW4iG_nYqaUctsyR7TzkMy8WPAHSLx14",
      );
      Logger.printSuccess(
        response.data!['results'][0]['geometry']['location'].toString(),
      );
      // final response = await ApiClient().get("https://maps.googleapis.com/maps/api/geocode/json?address=24%20Sussex%20Drive%20Ottawa%20ON&key=AIzaSyAjdNnw06XH3bUkAB6VZBU3w7ynnvk1b5I");
      final Map<String, dynamic> coords = response.data!['results'][0]['geometry']['location']
          as Map<String, dynamic>;

      _lat = coords['lat'];
      _long = coords['lng'];
      _groupLocation = CameraPosition(
        target: LatLng(_lat, _long),
        zoom: 15,
      );
      Logger.printWarning("$_lat $_long");
      notifyListeners();
      toggleLoading();
    } catch (e) {
      Logger.printError(e.toString());
      toggleLoading();
    }
  }
  
  Future<void> getInterests(BuildContext context) async {
    // toggleLoading();
    await _getInterestsRepoImpl.getInterests("").then((value) {
      // toggleLoading();
      return value.fold(
        (l) {
         // showCustomSnackBar(context, text: l.message, color: redColor);
        }, 
        (r) {
          _getInterestsResponseModel = r;
          notifyListeners();
        }
      );
    });
  }

  void clearAllData(){
    _controller.dispose();
    _postVideoUrl = "";
    _postImageUrl = "";
    _checkInImageUrl = "";
    _colorcode = "";
    _locationData = "";
    _checkInImageLoading = false;
    screenshotController = ScreenshotController();
    _lat = 0;
    _long = 0;
    _groupLocation = const CameraPosition(target: LatLng(22.57456610758227, 88.43059525421059), zoom: 1,);
    _postVideo = File("null");
    _postImage = File("null");
    _checkInImage = File("null");
    notifyListeners();
  }


  //==Add Tag post
  Future<void> addTags(
    BuildContext context, AddTagsResquestModel addTagsResquest,) async {
      toggleLoading();
      notifyListeners();
    await _addTagsRepoImpl.addtags(addTagsResquest).then((value) {
      toggleLoading();
      return value.fold((l) {
        Logger.printError("Wrong");
      }, (r) async {
        addTagsResponse = r;
        if (addTagsResponse?.isSuccess == true) {
          view?.showSnackbar(addTagsResponse?.message.toString() ?? "null");
        }
        notifyListeners();
      });
    });
    notifyListeners();
  }
}
