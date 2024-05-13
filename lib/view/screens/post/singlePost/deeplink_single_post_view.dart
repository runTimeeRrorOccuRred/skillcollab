// ignore_for_file: prefer_if_elements_to_conditional_expressions, deprecated_member_use, duplicate_ignore, avoid_print, use_late_for_private_fields_and_variables, unused_field

import 'dart:async';

import 'package:chewie/chewie.dart';
import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/posts/comments/addComment/postComment/models/post_comment_model.dart';
// import 'package:skill_colab/data/remote/posts/comments/addComment/postComment/models/post_comment_model.dart';
import 'package:skill_colab/data/remote/posts/likeDislike/models/like_dislike_model.dart';
// import 'package:skill_colab/data/remote/posts/comments/addComment/postComment/models/post_comment_model.dart';
import 'package:skill_colab/domain/providers/self_provider.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/box_shadow.dart';
import 'package:skill_colab/utils/utils.dart';
import 'package:skill_colab/view/components/shimmer.dart';
import 'package:skill_colab/view/screens/groups/publicGroupProfile/public_group_profile_view_model.dart';
import 'package:skill_colab/view/screens/post/comment/comment_container.dart';
// import 'package:skill_colab/view/screens/post/comment/comment_container.dart';
// import 'package:skill_colab/view/screens/post/comment/comment_container.dart';
import 'package:skill_colab/view/screens/post/singlePost/single_post_view_model.dart';
import 'package:skill_colab/view/screens/splash/splash_view_model.dart';
import 'package:uni_links/uni_links.dart';
import 'package:video_player/video_player.dart';
import 'package:widget_zoom/widget_zoom.dart';

class DeeplinkSinglePostView extends ConsumerStatefulWidget {
  // final Post postDetails; 
  final String slugId;
  const DeeplinkSinglePostView({super.key, required this.slugId});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DeeplinkSinglePostViewState();
}

class _DeeplinkSinglePostViewState extends ConsumerState<DeeplinkSinglePostView>  with BaseScreenView {
  final Completer<GoogleMapController> _controller = Completer<GoogleMapController>();
  TextEditingController commentController = TextEditingController();
  

  late SinglePostViewModel _viewModel;  
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;
  bool videoLoader = true;
  bool linkLoader = true;  

  // ignore: cancel_subscriptions
  StreamSubscription? _sub;

  Future<void> initUniLinks() async {
    // ... check initialLink

    // Attach a listener to the stream
    _sub = linkStream.listen((String? link) async {
      await ref.read(splashViewModel).getAccessToken(context, initUrl: widget.slugId).then((value) {
        Future.delayed(const Duration(seconds: 5), () {
          context.pushNamed(AppRoute.sinlgePost.name, extra: widget.slugId);
        });
      });
    }, onError: (err) {
      // Handle exception by warning the user their action did not succeed
    });

    // NOTE: Don't forget to call _sub.cancel() in dispose()
  }

  @override
  void initState() {
    super.initState();
    // initUniLinks();
    Logger.printInfo(widget.slugId);

    ref.read(splashViewModel).getAccessToken(context, initUrl: widget.slugId);

    Future.delayed(Duration(seconds: 3), () {
      _viewModel = ref.read(singlePostViewModel);
      _viewModel.attachView(this);
      _viewModel.getSinglePostData(context, widget.slugId);
    });

    Future.delayed(const Duration(seconds: 6), () {
      if(_viewModel.getSinglePostResponseModel.data?.videoUrl != null && (_viewModel.getSinglePostResponseModel.data?.videoUrl?.isNotEmpty ?? false)) {
        _videoPlayerController = VideoPlayerController.networkUrl(Uri.parse(_viewModel.getSinglePostResponseModel.data?.videoUrl ?? ""));
        _chewieController = ChewieController(
          videoPlayerController: _videoPlayerController,
          allowMuting: false,
          allowFullScreen: false,
          autoInitialize: true,
          allowPlaybackSpeedChanging: false,
          hideControlsTimer: const Duration(seconds: 1),
        );
      }
    });

    Future.delayed(const Duration(seconds: 8), () {
      setState(() {
        videoLoader = false;
        linkLoader = false;
      });
    });
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    _viewModel.detachView();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    _viewModel = ref.watch(singlePostViewModel);
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) async {
        if (MediaQuery.of(context).viewInsets.bottom > 0) {
          SystemChannels.textInput.invokeMethod('TextInput.hide');
        } else {
          if(context.canPop()) {
            context.pop();
          } else {
            context.pushReplacementNamed(AppRoute.navigationView.name);
          }
        }
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: false,
          leading: Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {
                // _viewModel.clearComments();
                // context.pop();
                context.pushReplacementNamed(AppRoute.navigationView.name);
              },
              child: Container(
                padding: const EdgeInsets.only(
                  left: 10,
                  top: 10,
                  bottom: 10,
                ),
                decoration: const BoxDecoration(
                  color: Color(0xFFF3F5F6),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: primaryColor,
                  size: 18,
                ),
              ),
            ),
          ),
          actions: [
            Container(
              padding: const EdgeInsets.all(8),
              child: MaterialButton(
                onPressed: () async {
                  await ref.read(splashViewModel).getAccessToken(context, initUrl: widget.slugId).then((value) {
                    _viewModel.getSinglePostData(context, widget.slugId);
                  });
                },
                elevation: 0,
                shape: const CircleBorder(),
                child: const Icon(Icons.refresh, color: primaryColor,),
              ),
            ),
          ],
        ),
        body: CustomMaterialIndicator(
          onRefresh: ()async{
                Future.delayed(const Duration(seconds: 2));
                _viewModel.getSinglePostData(context, widget.slugId);
                // return false;
              },
              indicatorBuilder: (context, controller) {
                return const Icon(
                  Icons.refresh,
                  color: primaryColor,
                  size: 30,
                );
              },
          // ignore: avoid_unnecessary_containers
          child: Container(
            child: SingleChildScrollView(
              child: _viewModel.loading || linkLoader
              ? SizedBox(
                  height: size.height, 
                  width: size.width, 
                  child: ShimmerWidgets.singlePostShimmerWidget(context),
                )
              : Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Text(_viewModel.getSinglePostResponseModel.data?.description ?? "", 
                      //   style: TextStyle(
                      //     color:  _viewModel.getSinglePostResponseModel.data?.bgColor == '0xff54b3bf' 
                      //           || _viewModel.getSinglePostResponseModel.data?.bgColor == '0xff59cc66' 
                      //           || _viewModel.getSinglePostResponseModel.data?.bgColor == '0xffff6666' 
                      //           ?  Colors.white
                      //           : kBlack, 
                      //     fontSize: 18, 
                      //     fontWeight: FontWeight.w600
                      //   ), 
                      // ),
                      // gapH10,
                      Container(
                        width: size.width,
                        height: 60,
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          color: kWhite,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [CustomBoxShadow()],
                        ),
                        child: GestureDetector(
                          onTap: () {
                            // print(_viewModel.getSinglePostResponseModel.data?.userId ?? "");
                            // print(AppConstants.userId);
                            context.pushNamed(AppRoute.profileView.name, extra: {
                              "userId": _viewModel.getSinglePostResponseModel.data?.userId?.id ?? "",
                              "isSelfProfile":
                                  (_viewModel.getSinglePostResponseModel.data?.userId?.id ?? "") ==
                                      AppConstants.userId,
                            },);
                          },
                          child: Row(
                            children: [
                              gapW10,
                              SizedBox(
                                height: 40,
                                width: 40,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: _viewModel.getSinglePostResponseModel.data?.userId?.profilePhoto == null || !(_viewModel.getSinglePostResponseModel.data?.userId?.profilePhoto?.contains("https://skill") ?? true)
                                      ? Image.asset("assets/icons/user.png", fit: BoxFit.cover) // Use Image.asset for local assets
                                      : Image.network(
                                          _viewModel.getSinglePostResponseModel.data?.userId?.profilePhoto ?? AppConstants.imageNotFoundLink,
                                          fit: BoxFit.cover, // Ensure Image.network covers the box
                                        ),
                                ),
                              ),
      
                              
                              // CircleAvatar(
                              //   backgroundColor: Colors.transparent,
                              //   backgroundImage: _viewModel.getSinglePostResponseModel.data?.userId?.profilePhoto == null || !(_viewModel.getSinglePostResponseModel.data?.userId?.profilePhoto?.contains("https://skill") ?? true)
                              //       ? Image.asset("assets/icons/user.png").image
                              //       : NetworkImage(
                              //           _viewModel.getSinglePostResponseModel.data?.userId?.profilePhoto ?? AppConstants.imageNotFoundLink,),
                              //   radius: 20,
                              // ),
                              gapW10,
                              Text(
                                "${_viewModel.getSinglePostResponseModel.data?.userId?.firstName ?? ""} ${_viewModel.getSinglePostResponseModel.data?.userId?.lastName ?? ""}",
                                // "firstName lastName",
                                style: const TextStyle(
                                    color: primaryColor,
                                    fontWeight: FontWeight.w700,),
                              ),
                              const Spacer(),
                              // IconButton(
                              //   onPressed: () {},
                              //   icon: const Icon(Icons.more_horiz_rounded, color: kBlack,),
                              // ),
                            ],
                          ),
                        ),
                      ),
                      gapH24,
                      Container(
                        width: size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        padding: const EdgeInsets.only(top: 16.0),
                        decoration: BoxDecoration(
                          color: kWhite,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [CustomBoxShadow()],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 8,),
                              decoration: BoxDecoration(
                                color: _viewModel.getSinglePostResponseModel.data?.bgColor?.isEmpty ?? false ? kWhite :  Color(int.parse(AppConstants.formatColor(_viewModel.getSinglePostResponseModel.data?.bgColor ?? "0xffffffff"))),
                                // borderRadius: BorderRadius.circular(18),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                    child: Text(
                                      _viewModel.getSinglePostResponseModel.data?.description ?? "",
                                      style: TextStyle(
                                          color: AppConstants.formatColor( _viewModel.getSinglePostResponseModel.data?.bgColor ?? "",) == '0xff54b3bf' 
                                          || AppConstants.formatColor( _viewModel.getSinglePostResponseModel.data?.bgColor ?? "",) == '0xff59cc66' 
                                          || AppConstants.formatColor( _viewModel.getSinglePostResponseModel.data?.bgColor ?? "",) == '0xffff6666'
                                          ? Colors.white
                                          : kBlack,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,),
                                    ),
                                  ),
                                  gapH10,
                                  Container(
                                    child: _viewModel.getSinglePostResponseModel.data?.postImage == null ||
                                      (!(_viewModel.getSinglePostResponseModel.data?.postImage?.contains('jpg') ?? true) &&
                                          !(_viewModel.getSinglePostResponseModel.data?.postImage?.contains('png') ?? true))
                                    ? Container()
                                    : ClipRRect(
                                        // borderRadius: BorderRadius.circular(18),
                                        child: WidgetZoom(
                                          heroAnimationTag: 'groupProfile',
                                          zoomWidget: Image.network(
                                              _viewModel.getSinglePostResponseModel.data?.postImage ?? "",
                                              fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                  ),
                                  gapH12,
                                  SizedBox(
                                    
                                    width: MediaQuery.of(context).size.width,
                                    // height: MediaQuery.of(context).size.height*0.2,
                                    child: _viewModel.getSinglePostResponseModel.data?.gif ==
                                                null ||
                                            (!(_viewModel.getSinglePostResponseModel.data?.gif!
                                                    .contains('.gif') ?? true)) ||
                                            !(_viewModel.getSinglePostResponseModel.data?.gif!
                                                .contains('http') ?? true) ||
                                            (_viewModel.getSinglePostResponseModel.data?.gif!.isEmpty ?? false)
                                        ? Container()
                                        : ClipRRect(
                                            // borderRadius: BorderRadius.circular(18),
                                            child: Image.network(
                                              _viewModel.getSinglePostResponseModel.data?.gif ?? "",
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                  ),
                                  gapH10,
                              

                                  if(_viewModel.getSinglePostResponseModel.data?.videoUrl != null && (_viewModel.getSinglePostResponseModel.data?.videoUrl?.isNotEmpty ?? false)) SizedBox(
                                    child: videoLoader 
                                      ? const Center(child: CircularProgressIndicator(color: primaryColor,),)
                                      : AspectRatio(
                                        aspectRatio: _videoPlayerController.value.aspectRatio,
                                        child: Chewie(
                                          controller: _chewieController,
                                        ),
                                      ),
                                  ) else const SizedBox(),
                                
                                  gapH10,
                                  _viewModel.getSinglePostResponseModel.data?.checkIn != ""
                                  && _viewModel.getSinglePostResponseModel.data?.checkInImage != null
                                  ? Container(
                                      width: size.width,
                                      height: 160,
                                      decoration: BoxDecoration(
                                        color: Colors.green[100],
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: GoogleMap(
                                        initialCameraPosition: _viewModel.groupLocation,
                                        onMapCreated: (GoogleMapController controller) async {
                                          _controller.complete(controller);
                                        },
                                        zoomControlsEnabled: false,
                                        markers: {
                                          Marker(
                                            markerId: const MarkerId("1"),
                                            position: LatLng(_viewModel.lat, _viewModel.long),
                                            // icon: BitmapDescriptor.fromBytes(list)
                                          ),
                                        },
                                      ),
                                    ) : const SizedBox(),
                                ],
                              ),
                            ),
                            gapH10,
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Row(
                                children: [
                                  ///=========== UPVOTE ===========///
                                  GestureDetector(
                                    onTap: () async {
                                      // Logger.printWarning(_viewModel.like.toString() ?? false.toString());                                    
                                      
                                      _viewModel.setLikeDislike(!_viewModel.like, _viewModel.dislike);
                                      if(_viewModel.like) {
                                        _viewModel.updateLikeDislikeCounts(_viewModel.likeCounts + 1, _viewModel.dislikeCounts);
                                      } else {
                                        _viewModel.updateLikeDislikeCounts(_viewModel.likeCounts - 1, _viewModel.dislikeCounts);
                                      }
      
      
                                      if (_viewModel.dislike == true) {
                                        _viewModel.setLikeDislike(_viewModel.dislike, false);
                                        _viewModel.updateLikeDislikeCounts(_viewModel.likeCounts, _viewModel.dislikeCounts - 1);
                                      }
                              
                                      final LikeDislikeRequestModel
                                          likeDislikeRequestModel =
                                          LikeDislikeRequestModel(
                                              isLike: _viewModel.like,
                                              isDislike: _viewModel.dislike,
                                              postId: _viewModel.getSinglePostResponseModel.data?.id,
                                              type: "post",);
                                      // _viewModel.likeDislikePost(context, likeDislikeRequestModel);
                                      ref.read(publicGroupProfileViewModel).likeDislikePost(context, likeDislikeRequestModel,);
                              
                                      HapticFeedback.heavyImpact();
                                    },
                                    child: Icon(
                                      Icons.thumb_up,
                                      color: _viewModel.like ? Colors.green : kGrey,
                                    ),
                                    // SvgPicture.asset(
                                    //   'assets/icons/upvoteComment.svg',
                                    //   height: 20,
                                    //   // ignore: deprecated_member_use
                                    //   color: _viewModel.like ? Colors.green : kGrey,
                                    // ),
                                  ),
                                  gapW4,
                                  Text("${_viewModel.likeCounts}"),
                                  gapW4,
                                  ///=========== DOWNVOTE ===========///
                                  GestureDetector(
                                    onTap: () {
                                      _viewModel.setLikeDislike(_viewModel.like, !_viewModel.dislike,);
                                      if(_viewModel.dislike) {
                                        _viewModel.updateLikeDislikeCounts(_viewModel.likeCounts, _viewModel.dislikeCounts + 1);
                                      } else {
                                        _viewModel.updateLikeDislikeCounts(_viewModel.likeCounts, _viewModel.dislikeCounts - 1);
                                      }
                              
                                      if (_viewModel.like == true) {
                                        _viewModel.setLikeDislike(false, _viewModel.dislike,);
                                        _viewModel.updateLikeDislikeCounts(_viewModel.likeCounts - 1, _viewModel.dislikeCounts);
                                      }
                              
                              
                                      final LikeDislikeRequestModel
                                          likeDislikeRequestModel =
                                          LikeDislikeRequestModel(
                                              isLike: _viewModel.like,
                                              isDislike: _viewModel.dislike,
                                              postId: _viewModel.getSinglePostResponseModel.data?.id,
                                              type: "post",);
                                      // _viewModel.likeDislikePost(context, likeDislikeRequestModel);
                                      ref.read(publicGroupProfileViewModel).likeDislikePost(context, likeDislikeRequestModel);
                              
                                      HapticFeedback.heavyImpact();
                                    },
                                    child: Icon(
                                      Icons.thumb_down,
                                      color: _viewModel.dislike ? Colors.orange[900] : kGrey,
                                    ),
                                    // SvgPicture.asset(
                                    //   'assets/icons/downvoteComment.svg',
                                    //   height: 20,
                                    //   color: _viewModel.dislike
                                    //       ? Colors.orange[900]
                                    //       : kGrey,
                                    // ),
                                  ),
                                  gapW4,
                                  Text("${_viewModel.dislikeCounts}"),
                                  gapW8,
                                  SvgPicture.asset(
                                    "assets/icons/comment-1.svg",
                                  ),
                                  gapW4,
                                  // Text(
                                  //   (_viewModel.allComments[_viewModel.allComments.length - 1].count ?? 0).toString(),
                                  //   style: const TextStyle(color: kGrey),
                                  // ),
                                ],
                              ),
                            ),
                            gapH16,
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 36,
                                    width: 36,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(18),
                                      child: ref.watch(selfDataProvider).singleUserResponseModel.data?.profilePhoto == null || !(ref.watch(selfDataProvider).singleUserResponseModel.data?.profilePhoto?.contains("https://skill") ?? true)
                                          ? Image.asset("assets/icons/user.png", fit: BoxFit.cover) // Use Image.asset for local assets
                                          : Image.network(
                                              ref.watch(selfDataProvider).singleUserResponseModel.data?.profilePhoto ?? "",
                                              fit: BoxFit.cover, // Ensure Image.network covers the box
                                            ),
                                    ),
                                  ),
                                  // CircleAvatar(
                                  //   backgroundImage: !(ref.watch(selfDataProvider).singleUserResponseModel.data?.profilePhoto?.contains("https://skill") ?? true) || (ref.watch(selfDataProvider).singleUserResponseModel.data?.profilePhoto?.isEmpty ?? true)
                                  //       ? Image.asset("assets/icons/user.png").image
                                  //       : NetworkImage(ref.watch(selfDataProvider).singleUserResponseModel.data?.profilePhoto ?? ""),
                                  //   backgroundColor: kWhite,
                                  // ),
                                  gapW10,
                                  Expanded(
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFF8F7F9),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: TextFormField(
                                        controller: commentController,
                                        // enabled: false,
                                        cursorColor: primaryColor,
                                        textCapitalization: TextCapitalization.sentences,
                                        decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.only(
                                            left: 10,
                                          ),
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          hintText: "Add a Comment....",
                                          hintStyle: TextStyle(
                                            color: kGrey,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  gapW10,
                                  InkWell(
                                    onTap: () {
                                      // print(commentController.text.length);
                                      if(commentController.text.isNotEmpty) {
                                        Logger.printSuccess(commentController.text);
                                        final PostCommentRequestModel
                                            postCommentRequestModel =
                                            PostCommentRequestModel(
                                                comment: commentController.text,
                                                postId: _viewModel.getSinglePostResponseModel.data?.id,
                                                type: "post",);
                              
                                        print(postCommentRequestModel);
                                        commentController.clear();
                              
                                        _viewModel.addPostComment(context, postCommentRequestModel,).then((value){ 
                                          commentController.clear();
                                          if (MediaQuery.of(context).viewInsets.bottom > 0) {
                                            SystemChannels.textInput.invokeMethod('TextInput.hide');
                                          }
                                        });
                                      } else {
                                        Fluttertoast.showToast(
                                          msg: "Comments cannot be empty",
                                          backgroundColor: Colors.blueGrey,
                                          gravity: ToastGravity.CENTER,
                                        );
                                      }
                                    },
                                    child: SvgPicture.asset(
                                      "assets/icons/send-comment.svg",
                                      height: 40,
                                      width: 40,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            gapH20,
                            Visibility(
                              visible: _viewModel.addCommentLoader,
                              child: Column(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 80,
                                    margin:
                                        const EdgeInsets.symmetric(horizontal: 16),
                                    decoration: BoxDecoration(
                                      color: kGrey.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: const Center(
                                      child: SpinKitThreeBounce(
                                        color: primaryColor,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                  gapH12,
                                ],
                              ),
                            ),
                            _viewModel.loading
                                ? const Center(
                                    child: CircularProgressIndicator(
                                      color: primaryColor,
                                    ),
                                  )
                                : ListView.builder(
                                    physics: const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: _viewModel.allComments.length - 1,
                                    itemBuilder: (context, index) {
                                      return CommentContainer(commentDetails: _viewModel.allComments[index]);
                                    },
                                  ),
                          ],
                        ),
                      ),
                      gapH40,
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement navigateToScreen
  }

  @override
  void pushReplacementToScreen(AppRoute appRoute,
      {Map<String, String>? params,}) {
    // TODO: implement pushReplacementToScreen
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    // TODO: implement showSnackbar
  }
}
