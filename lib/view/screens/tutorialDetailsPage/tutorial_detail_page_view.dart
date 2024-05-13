import 'package:flutter/material.dart';
import 'package:flutter_quill/quill_delta.dart' as quill;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:go_router/go_router.dart';
import 'package:html/dom.dart' as htmlDom;
import 'package:html/parser.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/tutorial/comments/add_comment/models/tutorial_comment_model.dart';
import 'package:skill_colab/data/remote/tutorial/comments/get_comment/models/get_tutorial_comment_model.dart';
import 'package:skill_colab/data/remote/tutorial/getTutorialByGroup/models/get_tutorial_by_group_model.dart';
import 'package:skill_colab/data/remote/tutorial/likeDislike/models/like_dislike_model.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/box_shadow.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/utils/logger.dart';
import 'package:skill_colab/view/screens/groups/publicGroupProfile/public_group_profile_view_model.dart';
import 'package:skill_colab/view/screens/profile/userProfile/user_profile_view_model.dart';
import 'package:skill_colab/view/screens/tutorialDetailsPage/tutorial_comment_tile.dart';
import 'package:skill_colab/view/screens/tutorialDetailsPage/tutorial_detail_page_view_model.dart';
import 'package:widget_zoom/widget_zoom.dart';

class TutorialDetailsPage extends ConsumerStatefulWidget {
  final TutorialData tutorialDetail;
  const TutorialDetailsPage({super.key, required this.tutorialDetail});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TutorialDetailsPageState();
}

class _TutorialDetailsPageState extends ConsumerState<TutorialDetailsPage>
    with BaseScreenView {
  late TutorialDetailViewModel _viewModel;
  bool isLike = false;
  bool isDislike = false;
  int likeCounts = 0;
  int dislikeCounts = 0;
  

  

  String s="";
  String updatedString="";
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _viewModel = ref.read(tutorialDetailModel);
      // Logger.printSuccess(_viewModel.loading.toString());
      s = widget.tutorialDetail.data?.desc ?? "";
      updatedString = s.replaceAll('&lt;', '<');
      _viewModel.getTutorialComment(context, widget.tutorialDetail.id ?? "");
      isLike = widget.tutorialDetail.likeDislike?.isLike ?? false;
      isDislike = widget.tutorialDetail.likeDislike?.isDislike ?? false;
      likeCounts = widget.tutorialDetail.likeCounts ?? 0;
      dislikeCounts = widget.tutorialDetail.dislikeCounts ?? 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(tutorialDetailModel);
    final size = MediaQuery.of(context).size;
   
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        _viewModel.likeDislikeTutorial(
            context,
            LikeDislikeTutorialRequestModel(
              isLike: isLike,
              isDislike: isDislike,
              type: "tutorial",
              tutorialId: widget.tutorialDetail.id ?? "",
            ),);
            context.pop();
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
                Navigator.of(context).pop();
              },
              child: Container(
                padding: const EdgeInsets.only(
                  left: 7,
                  top: 8,
                  bottom: 10,
                ),
                decoration: const BoxDecoration(
                  color: Color(0xFFF3F5F6),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: primaryColor,
                  size: 20,
                ),
              ),
            ),
          ),
          title: Text(
            widget.tutorialDetail.groupDetails?.name ?? "",
            style: const TextStyle(
              color: primaryColor,
              fontSize: 18,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              gapH32,
              GestureDetector(
                onTap: () {
                  context.pushNamed(AppRoute.profileView.name, extra: {
                    "userId": widget.tutorialDetail.userId?.id ?? "",
                    "isSelfProfile": (widget.tutorialDetail.userId?.id ?? "") == AppConstants.userId,
                    },
                  );
                },
                child: Container(
                  width: size.width,
                  height: 70,
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      color: kWhite,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [CustomBoxShadow()],),
                  child: Row(
                    children: [
                      gapW10,
                      if ((widget.tutorialDetail.userId?.profilePhoto ?? "") ==
                              "" ||
                          !(widget.tutorialDetail.userId?.profilePhoto
                                  ?.contains("https://skillcollab") ??
                              true))
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset('assets/icons/account-pic.svg'),
                        )
                      else
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              widget.tutorialDetail.userId?.profilePhoto ?? "",),
                          backgroundColor: kWhite,
                        ),
                      gapW10,
                      Text(
                        "${widget.tutorialDetail.userId?.firstName ?? ""} ${widget.tutorialDetail.userId?.lastName ?? ""}",
                        style: const TextStyle(
                            color: primaryColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 18,),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
              // gapH32,
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: kGrey.withOpacity(
                          0.3,
                        ),
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    color: widget.tutorialDetail.bgColor?.isEmpty ?? false ? kWhite : Color(int.parse(AppConstants.formatColor(widget.tutorialDetail.bgColor ?? "0xffffffff"))),
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(
                      color: const Color(0xFFE1E1EF),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16),
                        child: Text(
                          widget.tutorialDetail.data?.title ?? "",
                          style: TextStyle(
                              fontSize: 16,
                              color: AppConstants.formatColor( widget.tutorialDetail.bgColor ?? "",) == '0xff54b3bf' 
                                            || AppConstants.formatColor( widget.tutorialDetail.bgColor ?? "",) == '0xff59cc66' 
                                            || AppConstants.formatColor( widget.tutorialDetail.bgColor ?? "",) == '0xffff6666'
                                  ?  Colors.white
                                  : kBlack,
                              fontWeight: FontWeight.bold,),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        color: Colors.grey.shade200,
                        height: 2,
                        width: MediaQuery.of(context).size.width,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      //--------------------------------------------------------------------------------------------//
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal:  16.0),
                         child: HtmlWidget(
                                               // the first parameter (`html`) is required
                                               updatedString,
                                               textStyle: const TextStyle(fontSize: 14),
                                               
                                             ),
                       ),
                      
                      gapH16,
                      Container(
                        //!==>image box style
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        width: MediaQuery.of(context).size.width,
                        // height: MediaQuery.of(context).size.height*0.2,
                        child: widget.tutorialDetail.tutorialImage == null ||
                                (!widget.tutorialDetail.tutorialImage!
                                        .contains('.jpg') &&
                                    !widget.tutorialDetail.tutorialImage!
                                        .contains('.png')) ||
                                !widget.tutorialDetail.tutorialImage!
                                    .contains('http') ||
                                widget.tutorialDetail.tutorialImage!.isEmpty
                            ? Container()
                            : ClipRRect(
                                // borderRadius: BorderRadius.circular(18),
                                child: WidgetZoom(
                                  heroAnimationTag: 'tag',
                                  zoomWidget: Image.network(
                                    widget.tutorialDetail.tutorialImage ?? '',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                      ),
                      // const SizedBox(height: 8,),
                      // const Text("\u2022 A pariatur autem in voluptatem odit ut magni doloremque sit iste modi sit voluptas omnis nam soluta dolorem eum iste cupiditate.", style: TextStyle(fontSize: 14, color: Colors.grey),),
                      // const SizedBox(height: 8,),
                      // const Text("\u2022 Qui veniam galisum sed nihil dicta id expedita enim id voluptates nemo 33 nihil provident.", style: TextStyle(fontSize: 14, color: Colors.grey),),
                      // const SizedBox(height: 8,),
                      // const Text("Et doloremque saepe qui tenetur eveniet sit sint  reiciendis!.", style: TextStyle(fontSize: 14, color: Colors.grey),),
                      // const SizedBox(height: 15,),
                      // Container(
                      //   //!==>image box style
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(18),
                      //   ),
                      //   width: MediaQuery.of(context).size.width,
                      //   // height: MediaQuery.of(context).size.height*0.2,
                      //   child: ClipRRect(
                      //     borderRadius: BorderRadius.circular(18),
                      //     child: Image.asset(
                      //       "assets/images/postPic.png",
                      //       fit: BoxFit.cover,
                      //     ),
                      //   ),
                      // ),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:  16.0),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isLike = !isLike;
                                  if(isLike == false) {
                                    likeCounts--;
                                  } else {
                                    likeCounts++;
                                  }
                                          
                                          
                                  if(isDislike) {
                                    isDislike = false;
                                    dislikeCounts--;
                                  }
                                });
                                          
                                ref.read(tutorialDetailModel).likeDislikeTutorial(
                                  context, 
                                  LikeDislikeTutorialRequestModel(
                                    isDislike: isDislike,
                                    isLike: isLike,
                                    type: 'tutorial',
                                    tutorialId: widget.tutorialDetail.id ?? "",
                                  ),
                                ).then((value) {
                                  ref.read(publicGroupProfileViewModel).getTutorialByGroup(context, widget.tutorialDetail.groupId ?? "", const GetTutorialRequestModel(searchKey: "", filter: ""));
                                });
                              },
                              child: Icon(
                                Icons.thumb_up_alt_rounded,
                                size: 20,
                                color: isLike 
                                    ? (AppConstants.formatColor( widget.tutorialDetail.bgColor ?? "",) == '0xff54b3bf' 
                                            || AppConstants.formatColor( widget.tutorialDetail.bgColor ?? "",) == '0xff59cc66' 
                                            || AppConstants.formatColor( widget.tutorialDetail.bgColor ?? "",) == '0xffff6666'
                                      ?  Colors.green.shade200
                                      : Colors.green)
                                    : (AppConstants.formatColor( widget.tutorialDetail.bgColor ?? "",) == '0xff54b3bf' 
                                            || AppConstants.formatColor( widget.tutorialDetail.bgColor ?? "",) == '0xff59cc66' 
                                            || AppConstants.formatColor( widget.tutorialDetail.bgColor ?? "",) == '0xffff6666' 
                                      ?  Colors.grey.shade200
                                      : kGrey),
                              ),
                            ),
                            gapW4,
                            Text("$likeCounts"),
                            gapW10,
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isDislike = !isDislike;
                                  if(isDislike == false) {
                                    dislikeCounts--;
                                  } else {
                                    dislikeCounts++;
                                  }
                                          
                                  if(isLike) {
                                    isLike = false;
                                    likeCounts--;
                                  }
                                });
                                          
                                ref.read(tutorialDetailModel).likeDislikeTutorial(
                                  context, 
                                  LikeDislikeTutorialRequestModel(
                                    isDislike: isDislike,
                                    isLike: isLike,
                                    type: 'tutorial',
                                    tutorialId: widget.tutorialDetail.id ?? "",
                                  ),
                                ).then((value) {
                                  ref.read(publicGroupProfileViewModel).getTutorialByGroup(context, widget.tutorialDetail.groupId ?? "", const GetTutorialRequestModel(searchKey: "", filter: ""));
                                });
                              },
                              child: Icon(
                                Icons.thumb_down_alt_rounded,
                                size: 20,
                                color: isDislike 
                                      ? (AppConstants.formatColor( widget.tutorialDetail.bgColor ?? "",) == '0xff54b3bf' 
                                            || AppConstants.formatColor( widget.tutorialDetail.bgColor ?? "",) == '0xff59cc66' 
                                            || AppConstants.formatColor( widget.tutorialDetail.bgColor ?? "",) == '0xffff6666'
                                      ?  Colors.orange[200]
                                      : Colors.orange[900])
                                    : (AppConstants.formatColor( widget.tutorialDetail.bgColor ?? "",) == '0xff54b3bf' 
                                            || AppConstants.formatColor( widget.tutorialDetail.bgColor ?? "",) == '0xff59cc66' 
                                            || AppConstants.formatColor( widget.tutorialDetail.bgColor ?? "",) == '0xffff6666' 
                                      ?  Colors.grey.shade200
                                      : kGrey),
                              ),
                            ),
                            gapW4,
                            Text("$dislikeCounts"),
                            gapW10,
                            SvgPicture.asset(
                              'assets/icons/postCommentIcon.svg',
                              height: 20,
                              color: AppConstants.formatColor( widget.tutorialDetail.bgColor ?? "",) == '0xff54b3bf' 
                                            || AppConstants.formatColor( widget.tutorialDetail.bgColor ?? "",) == '0xff59cc66' 
                                            || AppConstants.formatColor( widget.tutorialDetail.bgColor ?? "",) == '0xffff6666'
                                      ? kWhite
                                      : kGrey,
                            ),
                            gapW10,
                            Text(
                              "${_viewModel.tutorialGetCommentResponseModel.data?.isEmpty ?? true ? 0 : (_viewModel.tutorialGetCommentResponseModel.data?.length ?? 0) - 1}",
                              style: TextStyle(
                                fontSize: 18,
                                color: AppConstants.formatColor( widget.tutorialDetail.bgColor ?? "",) == '0xff54b3bf' 
                                            || AppConstants.formatColor( widget.tutorialDetail.bgColor ?? "",) == '0xff59cc66' 
                                            || AppConstants.formatColor( widget.tutorialDetail.bgColor ?? "",) == '0xffff6666'
                                      ? kWhite
                                      : kGrey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:  16.0, right: 16.0,),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                context.pushNamed(AppRoute.profileView.name, extra: {
                                  "userId": AppConstants.userId,
                                  "isSelfProfile": true,
                                  },
                                );
                              },
                              child: CircleAvatar(
                                backgroundImage: ref
                                                .watch(userProfileViewModel)
                                                .singleUserResponseModel
                                                .data
                                                ?.profilePhoto ==
                                            null ||
                                        !(ref
                                                .watch(userProfileViewModel)
                                                .singleUserResponseModel
                                                .data
                                                ?.profilePhoto
                                                ?.contains("https://skill") ??
                                            true)
                                    ? Image.asset("assets/icons/user.png").image
                                    : NetworkImage(ref
                                            .watch(userProfileViewModel)
                                            .singleUserResponseModel
                                            .data
                                            ?.profilePhoto ??
                                        AppConstants.imageNotFoundLink,),
                                backgroundColor: Colors.white,
                              ),
                            ),
                            gapW10,
                            Expanded(
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF8F7F9),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: TextFormField(
                                  controller: _viewModel.commentController,
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
                                Logger.printSuccess(
                                    _viewModel.commentController.text,);
                                final TutorialAddCommentRequestModel
                                    tutorialAddCommentRequestModel =
                                    TutorialAddCommentRequestModel(
                                        tutorialId: widget.tutorialDetail.id,
                                        comment: _viewModel.commentController.text,
                                        type: "tutorial",);
                                Logger.printSuccess( tutorialAddCommentRequestModel.toString(),);
                                _viewModel.commentController.clear();
                                _viewModel.createTutorialsComment( context, tutorialAddCommentRequestModel,);
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
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:  16.0, right: 16.0, bottom: 16.0),
                        child: SizedBox(
                          child: _viewModel.commentLoader
                              ? const Center(
                                  child: CircularProgressIndicator(
                                    color: primaryColor,
                                  ),
                                )
                              : ListView.builder(
                                  physics: const BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  padding: const EdgeInsets.only(bottom: 10),
                                  itemCount: _viewModel
                                              .tutorialGetCommentResponseModel
                                              .data
                                              ?.isEmpty ??
                                          true
                                      ? 0
                                      : (_viewModel
                                                  .tutorialGetCommentResponseModel
                                                  .data
                                                  ?.length ??
                                              0) -
                                          1,
                                  itemBuilder: (context, index) {
                                    return TutorialCommentTile(tutorialComment: _viewModel.tutorialGetCommentResponseModel.data?[index] ?? const TutorialComment());
                                  },
                                ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
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


class HtmlToDeltaConverter {
  static const _COLOR_PATTERN = r'color: rgb\((\d+), (\d+), (\d+)\);';

  static quill.Delta _parseInlineStyles(htmlDom.Element element) {
    var delta = quill.Delta();

    for (final node in element.nodes) {
      final attributes = _parseElementStyles(element);

      if (node is htmlDom.Text) {
        delta.insert(node.text, attributes);
      }else if (node is htmlDom.Element && node.localName == 'img') {
        final src = node.attributes['src'];
        if (src != null) {
          delta.insert({'image': src});
        }
      } else if (node is htmlDom.Element) {
        delta = delta.concat(_parseInlineStyles(node));
      }

    }

    return delta;
  }

  static Map<String, dynamic> _parseElementStyles(htmlDom.Element element) {
    final Map<String, dynamic> attributes = {};

    if (element.localName == 'strong') attributes['bold'] = true;
    if (element.localName == 'em') attributes['italic'] = true;
    if (element.localName == 'u') attributes['underline'] = true;
    if (element.localName == 'del') attributes['strike'] = true;

    final style = element.attributes['style'];
    if (style != null) {
      final colorValue = _parseColorFromStyle(style);
      if (colorValue != null) attributes['color'] = colorValue;

      final bgColorValue = _parseBackgroundColorFromStyle(style);
      if (bgColorValue != null) attributes['background'] = bgColorValue;
    }

    return attributes;
  }

  static String? _parseColorFromStyle(String style) {
    if (RegExp(r'(^|\s)color:(\s|$)').hasMatch(style)) {
      return _parseRgbColorFromMatch(RegExp(_COLOR_PATTERN).firstMatch(style));
    }
    return null;
  }

  static String? _parseBackgroundColorFromStyle(String style) {
    if (RegExp(r'(^|\s)background-color:(\s|$)').hasMatch(style)) {
      return _parseRgbColorFromMatch(RegExp(_COLOR_PATTERN).firstMatch(style));
    }
    return null;
  }

  static String? _parseRgbColorFromMatch(RegExpMatch? colorMatch) {
    if (colorMatch != null) {
      try {
        final red = int.parse(colorMatch.group(1)!);
        final green = int.parse(colorMatch.group(2)!);
        final blue = int.parse(colorMatch.group(3)!);
        return '#${red.toRadixString(16).padLeft(2, '0')}${green.toRadixString(16).padLeft(2, '0')}${blue.toRadixString(16).padLeft(2, '0')}';
      } catch (e) {
        debugPrintStack(label: e.toString());
      }
    }
    return null;
  }

  static quill.Delta htmlToDelta(String html) {
    final document = parse(html);
    var delta = quill.Delta();

    for (final node in document.body?.nodes ?? []) {
      if (node is htmlDom.Element) {
        switch (node.localName) {
          case 'p':
            delta = delta.concat(_parseInlineStyles(node))..insert('\n');
            break;
          case 'br':
            delta.insert('\n');
            break;
        }
      }
    }

    return html.isNotEmpty ? delta : quill.Delta()..insert('\n');
  }
}