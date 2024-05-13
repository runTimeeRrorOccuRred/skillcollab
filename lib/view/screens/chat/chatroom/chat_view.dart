// import 'dart:ui' as ui;

// ignore_for_file: avoid_redundant_argument_values, avoid_print, use_build_context_synchronously, deprecated_member_use, depend_on_referenced_packages

// import 'package:audio_waveforms/audio_waveforms.dart';
import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:keyboard_emoji_picker/keyboard_emoji_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:record/record.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/notifications/models/chat_notifications_model.dart';
import 'package:skill_colab/data/remote/user/models/user_model.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/utils.dart';
import 'package:skill_colab/view/screens/chat/chatroom/chat_view_model.dart';
import 'package:skill_colab/view/screens/notifications/notifications_view_model.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:uuid/uuid.dart';

enum PopupItem { pin, delete, block }

class ChatView extends ConsumerStatefulWidget {
  final UserModel peerUserModel;
  const ChatView({super.key, required this.peerUserModel});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ChatViewState();
}

class _ChatViewState extends ConsumerState<ChatView> with BaseScreenView {
  late ChatViewModel _viewModel;
  final TextEditingController _messageController = TextEditingController();
  bool isMessageTextFieldActive = false;
  final record = AudioRecorder();
  bool isRecording = false;
  bool isPlaying = false;
  String? filePath;
  bool shouldScroll = true;
  final FocusNode _focus = FocusNode();
  final ScrollController _scrollController = ScrollController();

  Future<void> toggleRecording() async {
    final bool hasPermission = await record.hasPermission();
    final Directory appDocDirectory = await getApplicationDocumentsDirectory();

    if (!hasPermission) {
      return;
    }

    if (isRecording) {
      filePath = await record.stop();
      print("Recording stopped and saved to: $filePath");
      _viewModel.sendAudioMessage(context, '$filePath');
    } else {
      final String checkInImageId = const Uuid().v4();
      await record.start(
        const RecordConfig(
          encoder: AudioEncoder.aacLc,
          bitRate: 128000,
        ),
        path: '${appDocDirectory.path}/${checkInImageId}my_recording.mp3',
      );
      print("Recording started");
    }

    setState(() {
      isRecording = !isRecording;
    });
  }

//!
  final player = AudioPlayer();
  Future<void> playAudioFromUrl(String url) async {
    if (isPlaying) {
      await player.pause();
    } else {
      await player.play(UrlSource(url));
    }
    setState(() {
      isPlaying = !isPlaying; // Toggle the play/pause state
    });
  }

  double currentPos = 0.0;
  double totalDuration = 0.0;
  double currentPosition = 0.0;

  PopupItem? selectedMenu;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      ref.read(notificationsViewModel).attachView(this);
      _viewModel = ref.read(chatViewModel);
      _viewModel.getChatRoomId(AppConstants.userId, widget.peerUserModel.id ?? "",);
      _viewModel.attachView(this);

      // _scrollController.addListener(() {
      //   _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
      //   // setState(() {});
      // });

      _viewModel.positionControl(-1);
      player.onPositionChanged.listen((Duration p) {
        setState(() {
          currentPos = p.inMilliseconds.toDouble();
        });
      });
      player.onDurationChanged.listen((Duration d) {
        setState(() {
          totalDuration = d.inMilliseconds.toDouble();
        });
      });
    });

    player.onPlayerComplete.listen((event) {
      setState(() {
        currentPos = 0.0;
        totalDuration = 0.0;
        isPlaying = false;
        // Optionally, also reset other relevant state variables
      });
    });
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    _viewModel = ref.watch(chatViewModel);
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        if (MediaQuery.of(context).viewInsets.bottom > 0) {
          SystemChannels.textInput.invokeMethod('TextInput.hide');
        } else {
          _messageController.clear();
          context.pop();
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          leading: Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                padding: const EdgeInsets.only(
                  left: 5,
                ),
                decoration: const BoxDecoration(
                  color: Color(0xFFF3F5F6),
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: primaryColor,
                    size: 20,
                  ),
                ),
              ),
            ),
          ),
          title: GestureDetector(
            onTap: () {
              context.pushNamed(
                AppRoute.profileView.name,
                extra: {
                  "userId": widget.peerUserModel.id ?? "",
                  "isSelfProfile":
                      (widget.peerUserModel.id ?? "") == AppConstants.userId,
                },
              );
            },
            child: Row(
              children: [
                if (widget.peerUserModel.profilePhoto == null ||
                    !(widget.peerUserModel.profilePhoto
                            ?.contains("https://skill") ??
                        true))
                  SizedBox(
                    height: 30.h,
                    width: 30.w,
                    child: Image.asset(
                      "assets/icons/user.png",
                      fit: BoxFit.cover,
                    ),
                  )
                else
                  DecoratedBox(
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.h),
                      child: Image(image:  NetworkImage(
                          widget.peerUserModel.profilePhoto ?? "",
                        ),
                        height: 35.h,
                        width: 40.w,
                        fit: BoxFit.cover,
                      )
                    ),
                  ),
                //  ClipRRect(
      
                // backgroundColor:kWhite,
      
                // child: ,
                // widget.peerUserModel.profilePhoto == null || !(widget.peerUserModel.profilePhoto?.contains("https://skill") ?? true)
                // ? AssetImage("assets/icons/user.png")
                // : NetworkImage( widget.peerUserModel.profilePhoto ??"",),
                // ),
                gapW10,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${widget.peerUserModel.firstName ?? ""} ${widget.peerUserModel.lastName ?? ""}",
                      style: const TextStyle(
                        color: primaryColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w800,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      widget.peerUserModel.userName ?? "",
                      style: const TextStyle(
                        color: kGrey,
                        fontSize: 12,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ],
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    builder: (context) {
                      return Container(
                        // height: 300,
                        width: size.width,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                        ),
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  padding: widget.peerUserModel.profilePhoto ==
                                              null ||
                                          !(widget.peerUserModel.profilePhoto
                                                  ?.contains("https://skill") ??
                                              true)
                                      ? const EdgeInsets.all(8)
                                      : EdgeInsets.zero,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: widget.peerUserModel.profilePhoto ==
                                              null ||
                                          !(widget.peerUserModel.profilePhoto
                                                  ?.contains("https://skill") ??
                                              true)
                                      ? Image.asset("assets/icons/user.png")
                                      : ClipRRect(
                                          borderRadius: BorderRadius.circular(50),
                                          child: Image(image:  NetworkImage(
                                             widget.peerUserModel.profilePhoto ??
                                                AppConstants.imageNotFoundLink,
                                          ),
                                          fit: BoxFit.cover,)
                                        ),
                                ),
                                gapW10,
                                Text(
                                  "${widget.peerUserModel.firstName ?? ""} ${widget.peerUserModel.lastName ?? ""}",
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: primaryColor,),
                                ),
                                const Spacer(),
                                IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: const Icon(Icons.close),
                                ),
                              ],
                            ),
                            gapH32,
                            ListTile(
                              leading: const Icon(Icons.push_pin_outlined),
                              title: const Text("Pin / Unpin"),
                              onTap: () {
                                ref
                                    .read(chatViewModel)
                                    .pinUnpinChatRoom(_viewModel.chatRoomId);
                                Navigator.pop(context);
                                Navigator.pop(context);
                              },
                            ),
                            Container(
                              width: size.width,
                              height: 1,
                              color: Colors.grey[300],
                              padding: const EdgeInsets.all(10),
                              // margin: const EdgeInsets.symmetric(vertical: 10),
                            ),
                            ListTile(
                              leading: const Icon(Icons.delete_outline_rounded),
                              title: const Text("Delete"),
                              onTap: () {
                                ref
                                    .read(chatViewModel)
                                    .deleteChat(_viewModel.chatRoomId);
                                Navigator.pop(context);
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  padding: const EdgeInsets.only(top: 2, left: 10, right: 10),
                  decoration: const BoxDecoration(
                    color: Color(0xFFF3F5F6),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.more_horiz,
                    color: primaryColor,
                    // size: 20,
                  ),
                ),
              ),
            ),
      
            //  PopupMenuButton<PopupItem>(
            //   icon:const Icon(Icons.more_vert, color: primaryColor,),
            //   initialValue: selectedMenu,
            //   onSelected: (PopupItem item) {
            //     setState(() {
            //       selectedMenu = item;
            //     });
            //   },
            //   itemBuilder: (BuildContext context) => <PopupMenuEntry<PopupItem>>[
            //     const PopupMenuItem<PopupItem>(
            //       value: PopupItem.pin,
            //       child: Text('Pin'),
            //     ),
            //     const PopupMenuItem<PopupItem>(
            //       value: PopupItem.delete,
            //       child: Text('Delete'),
            //     ),
            //     const PopupMenuItem<PopupItem>(
            //       value: PopupItem.block,
            //       child: Text('Block'),
            //     ),
            //   ],
            // ),
      
            gapW4,
          ],
        ),
        body: Container(
          height: size.height,
          width: size.width,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: !_viewModel.loading
              ? Column(
                  children: [
                    Expanded(
                      child: StreamBuilder(
                        stream: _viewModel.getChatMessage(_viewModel.chatRoomId),
                        builder: (context, snapshot) {
                          if (!snapshot.hasData) {
                            return const Center(
                              child: CircularProgressIndicator(
                                color: primaryColor,
                              ),
                            );
                          } else {
                            if ((snapshot.data?.docs.length ?? 0) == 0) {
                              return const Center(
                                  child: Text("Start texting :D"),);
                            } else {
                              return ListView.builder(
                                controller: _scrollController,
                                itemCount: snapshot.data?.docs.length ?? 0,
                                itemBuilder: (context, index) {
                                  final bool isSelfMessage =
                                      snapshot.data?.docs[index]['sentBy'] ==
                                          AppConstants.userId;
                                  return Column(
                                    crossAxisAlignment: isSelfMessage
                                        ? CrossAxisAlignment.end
                                        : CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: index == 0 ? 16 : 0,),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: !isSelfMessage
                                              ? MainAxisAlignment.start
                                              : MainAxisAlignment.end,
                                          children: [
                                            Visibility(
                                              visible: !isSelfMessage,
                                              child: DecoratedBox(
                                                decoration: const BoxDecoration(
                                                    shape: BoxShape.circle,),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(10.h),
                                                  child: Image(image:  NetworkImage(
                                                     widget.peerUserModel.profilePhoto ?? AppConstants.imageNotFoundLink,
                                                  ),
                                                  height: 20.h,
                                                  width: 20.w,
                                                  fit: BoxFit.cover,)
                                                ),
                                              ),
      
                                              // CircleAvatar(
                                              //   backgroundImage: NetworkImage(widget.peerUserModel.profilePhoto ??"",),
                                              //   backgroundColor: kWhite,
                                              //   radius: 15,
                                              // ),
                                            ),
                                            gapW10,
                                            SizedBox(
                                              width: (snapshot.data?.docs[index]
                                                                  ['message'] ??
                                                              "")
                                                          .toString() ==
                                                      "protocol:upload:image"
                                                  ? 200
                                                  : (snapshot.data?.docs[index][
                                                                      'message'] ??
                                                                  "")
                                                              .toString() ==
                                                          "protocol:upload:audio"
                                                      ? 30
                                                      : (snapshot.data?.docs[index]
                                                                          [
                                                                          'message'] ??
                                                                      "")
                                                                  .toString()
                                                                  .length >
                                                              20
                                                          ? 200.h
                                                          : null,
                                              height: (snapshot.data?.docs[index]['message'] ??
                                                                  "")
                                                              .toString() ==
                                                          "protocol:upload:image" ||
                                                      (snapshot.data?.docs[index]
                                                                  ['message'] ??
                                                              "")
                                                          .toString()
                                                          .contains("pictures")
                                                  ? 250
                                                  : (snapshot.data?.docs[index]['message'] ??
                                                                      "")
                                                                  .toString() ==
                                                              "protocol:upload:audio" ||
                                                          (snapshot.data?.docs[index]
                                                                      ['message'] ??
                                                                  "")
                                                              .toString()
                                                              .contains("my_recording.mp3")
                                                      ? 30.h
                                                      : null,
                                              child: (snapshot.data?.docs[index]['message'] ??  "").toString() ==  "protocol:upload:image" ||
                                                      (snapshot.data?.docs[index][ 'message'] ?? "").toString() == "protocol:upload:audio" ||
                                                      (snapshot.data?.docs[index]['message'] ?? "").toString() == "protocol:upload:document"
                                                  ? Container(
                                                      padding: const EdgeInsets.all(12,),
                                                      decoration: BoxDecoration(
                                                        color: !isSelfMessage
                                                            ? Colors.grey[100]
                                                            : primaryColor,
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          topLeft: isSelfMessage
                                                              ? const Radius
                                                                  .circular(10)
                                                              : Radius.zero,
                                                          topRight: !isSelfMessage
                                                              ? const Radius
                                                                  .circular(10)
                                                              : Radius.zero,
                                                          bottomRight:
                                                              const Radius
                                                                  .circular(10),
                                                          bottomLeft: const Radius
                                                              .circular(10),
                                                        ),
                                                      ),
                                                      child: Center(
                                                        child: CupertinoActivityIndicator(
                                                            color: isSelfMessage
                                                                ? kWhite
                                                                : primaryColor,),
                                                      ),
                                                    )
                                                  : GestureDetector(
                                                      onTap: () {
                                                        if ((snapshot.data?.docs[index]['message'] ??  "").toString()
                                                            .contains("https://firebasestorage",)) {
                                                          showDialog(
                                                            context: context,
                                                            builder: (context) {
                                                              return GestureDetector(
                                                                onTap: () => Navigator.pop(context,),
                                                                child: Hero(
                                                                  tag: snapshot.data?.docs[index]['message'] ?? "",
                                                                  child:
                                                                      Container(
                                                                    height: size.height /1.6,
                                                                    width: size.width,
                                                                    margin: const EdgeInsets.all(40,),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .black,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10,),
                                                                      image:
                                                                          DecorationImage(
                                                                        image: NetworkImage(
                                                                            snapshot.data?.docs[index]['message'] ??
                                                                                "",),
                                                                        fit: BoxFit
                                                                            .contain,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          );
                                                        }
                                                      },
                                                      child:
                                                          //!for Audio
                                                          (snapshot.data?.docs[index]['message'] ?? "").toString().contains(".mp3",) &&
                                                                  (snapshot.data?.docs[index]['message'] ?? "").toString().contains("https://firebasestorage",)
                                                              ? DecoratedBox(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: !isSelfMessage
                                                                        ? Colors
                                                                            .grey[100]
                                                                        : primaryColor,
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      topLeft:
                                                                          const Radius
                                                                              .circular(
                                                                              10,),
                                                                      topRight: !isSelfMessage
                                                                          ? const Radius
                                                                              .circular(
                                                                              10,)
                                                                          : Radius
                                                                              .zero,
                                                                      bottomRight:
                                                                          const Radius
                                                                              .circular(
                                                                              10,),
                                                                      bottomLeft: isSelfMessage
                                                                          ? const Radius
                                                                              .circular(
                                                                              10,)
                                                                          : Radius
                                                                              .zero,
                                                                    ),
                                                                  ),
                                                                  child: Row(
                                                                    children: [
                                                                      IconButton(
                                                                        onPressed:
                                                                            () {
                                                                          HapticFeedback
                                                                              .mediumImpact();
                                                                          _viewModel.positionControl(index);
                                                                          playAudioFromUrl(snapshot.data?.docs[index]['message'] ?? "",);
                                                                        },
                                                                        icon: isPlaying &&
                                                                                _viewModel.position == index
                                                                            ? Icon(
                                                                                Icons.pause_circle_filled_sharp,
                                                                                color: isSelfMessage ? kWhite : primaryColor,
                                                                              )
                                                                            : Icon(
                                                                                Icons.play_arrow_rounded,
                                                                                color: isSelfMessage ? kWhite : primaryColor,
                                                                              ),
                                                                      ),
                                                                      if (_viewModel
                                                                              .position ==
                                                                          index)
                                                                        SliderTheme(
                                                                          data: SliderTheme.of(context)
                                                                              .copyWith(
                                                                            activeTrackColor: isSelfMessage
                                                                                ? kWhite
                                                                                : primaryColor,
                                                                            activeTickMarkColor: isSelfMessage
                                                                                ? kWhite
                                                                                : primaryColor,
                                                                            disabledActiveTickMarkColor: isSelfMessage
                                                                                ? kWhite
                                                                                : primaryColor,
                                                                            disabledActiveTrackColor: isSelfMessage
                                                                                ? kWhite
                                                                                : primaryColor,
                                                                            disabledInactiveTickMarkColor: isSelfMessage
                                                                                ? kWhite
                                                                                : primaryColor,
                                                                            disabledInactiveTrackColor: isSelfMessage
                                                                                ? kWhite
                                                                                : primaryColor,
                                                                            disabledThumbColor:
                                                                                kWhite,
                                                                          ),
                                                                          child:
                                                                              Slider(
                                                                            value:
                                                                                currentPos,
                                                                            max:
                                                                                totalDuration,
                                                                            thumbColor:
                                                                                kWhite,
                                                                            onChanged:
                                                                                (value) {
                                                                              setState(() =>
                                                                                  currentPos = value,);
                                                                              player.seek(Duration(milliseconds: currentPos.toInt()));
                                                                            },
                                                                          ),
                                                                        )
                                                                      else
                                                                        SliderTheme(
                                                                          data: SliderTheme.of(context)
                                                                              .copyWith(
                                                                            activeTrackColor: isSelfMessage
                                                                                ? kWhite
                                                                                : primaryColor,
                                                                            activeTickMarkColor: isSelfMessage
                                                                                ? kWhite
                                                                                : primaryColor,
                                                                            disabledActiveTickMarkColor: isSelfMessage
                                                                                ? kWhite
                                                                                : primaryColor,
                                                                            disabledActiveTrackColor: isSelfMessage
                                                                                ? kWhite
                                                                                : primaryColor,
                                                                            disabledInactiveTickMarkColor: isSelfMessage
                                                                                ? kWhite
                                                                                : primaryColor,
                                                                            disabledInactiveTrackColor: isSelfMessage
                                                                                ? kWhite
                                                                                : primaryColor,
                                                                            disabledThumbColor: isSelfMessage
                                                                                ? kWhite
                                                                                : primaryColor,
                                                                          ),
                                                                          child:
                                                                              Slider(
                                                                            value:
                                                                                0.0,
                                                                            thumbColor: isSelfMessage
                                                                                ? kWhite
                                                                                : primaryColor,
                                                                            inactiveColor: isSelfMessage
                                                                                ? kWhite
                                                                                : primaryColor,
                                                                            max:
                                                                                totalDuration,
                                                                            onChanged:
                                                                                (value) {},
                                                                          ),
                                                                        ),
                                                                    ],
                                                                  ),
                                                                )
      
                                                              //!for document
                                                              : (snapshot.data?.docs[index]['message'] ??
                                                                              "")
                                                                          .toString()
                                                                          .contains(
                                                                              "SkillcolabDoc_",) &&
                                                                      (snapshot.data?.docs[index]['message'] ??
                                                                              "")
                                                                          .toString()
                                                                          .contains("https://firebasestorage")
                                                                  ? GestureDetector(
                                                                      onTap:
                                                                          () async {
                                                                        final String
                                                                            documentUrl =
                                                                            snapshot.data?.docs[index]['message'] ??
                                                                                "";
                                                                        launchDocumentUrl(
                                                                            documentUrl,);
                                                                      },
                                                                      child:
                                                                          Container(
                                                                        padding: const EdgeInsets
                                                                            .all(
                                                                            8.0,),
                                                                        margin: const EdgeInsets
                                                                            .all(
                                                                            8.0,),
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          border: Border.all(
                                                                              color:
                                                                                  primaryColor,),
                                                                          borderRadius:
                                                                              BorderRadius.circular(10.0),
                                                                        ),
                                                                        child:
                                                                            _buildDocumentWidget(
                                                                          _getDocumentType(snapshot.data?.docs[index]['message'] ??
                                                                              "",),
                                                                          snapshot.data?.docs[index]['message'] ??
                                                                              "",
                                                                        ),
                                                                      ),
                                                                    )
                                                                  :
      
                                                                  //!For Image
                                                                  Hero(
                                                                      tag: snapshot
                                                                              .data
                                                                              ?.docs[index]['message'] ??
                                                                          "",
                                                                      child:
                                                                          Container(
                                                                        padding: const EdgeInsets
                                                                            .all(
                                                                            12,),
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: !isSelfMessage
                                                                              ? Colors.grey[100]
                                                                              : primaryColor,
                                                                          borderRadius:
                                                                              BorderRadius.only(
                                                                            bottomLeft: const Radius
                                                                                .circular(
                                                                                10,),
                                                                            topRight: !isSelfMessage
                                                                                ? const Radius.circular(10)
                                                                                : Radius.zero,
                                                                            bottomRight: const Radius
                                                                                .circular(
                                                                                10,),
                                                                            topLeft: isSelfMessage
                                                                                ? const Radius.circular(10)
                                                                                : Radius.zero,
                                                                          ),
                                                                          image: (snapshot.data?.docs[index]['message'] ?? "").toString().contains("https://firebasestorage")
                                                                              ? DecorationImage(
                                                                                  image: NetworkImage(snapshot.data?.docs[index]['message'] ?? ""),
                                                                                  fit: BoxFit.cover,
                                                                                )
                                                                              : null,
                                                                        ),
                                                                        child: (snapshot.data?.docs[index]['message'] ?? "")
                                                                                .toString()
                                                                                .contains("https://firebasestorage")
                                                                            ? Container()
                                                                            : Text(
                                                                                // _viewModel.decryptText(snapshot.data?.docs[index]['message']),
                                                                                snapshot.data?.docs[index]['message'],
                                                                                textAlign: isSelfMessage ? TextAlign.right : TextAlign.left,
                                                                                style: TextStyle(
                                                                                  color: !isSelfMessage ? Colors.grey[600] : kWhite,
                                                                                ),
                                                                              ),
                                                                      ),
                                                                    ),
                                                    ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      gapH8,
                                    ],
                                  );
                                },
                              );
                            }
                          }
                        },
                      ),
                    ),
      
                    Column(
                      children: [
                        Visibility(
                          visible: _scrollController.hasClients &&
                              _scrollController.position.pixels !=
                                  _scrollController.position.maxScrollExtent,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 50,
                                child: MaterialButton(
                                  onPressed: () {
                                    _scrollController.jumpTo(_scrollController
                                        .position.maxScrollExtent,);
                                    setState(() {});
                                  },
                                  shape: const CircleBorder(),
                                  color: primaryColor,
                                  child: const Center(
                                    child: Icon(Icons.arrow_downward_rounded),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        gapH10,
                        Row(
                          children: [
                            Expanded(
                              child: KeyboardEmojiPickerWrapper(
                                child: GestureDetector(
                                  onTap: () {
                                    _scrollController.jumpTo(_scrollController
                                        .position.maxScrollExtent,);
                                    setState(() {});
                                  },
                                  child: Container(
                                    // height: 50,
                                    padding:
                                        const EdgeInsets.symmetric(horizontal: 4),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: const Color(0xff4BD1E2),
                                          width: 2,),
                                      borderRadius: BorderRadius.circular(60),
                                    ),
                                    child: Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            _viewModel.sendImageMessage(
                                                context, ImageSource.camera,);
                                          },
                                          child: Container(
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(40),
                                              color: primaryColor,
                                            ),
                                            child: Center(
                                              child: SvgPicture.asset(
                                                "assets/icons/camera.svg",
                                                height: 20,
                                                width: 20,
                                              ),
                                            ),
                                          ),
                                        ),
                                        gapW10,
                                        Expanded(
                                          child: TextField(
                                            controller: _messageController,
                                            focusNode: _focus,
                                            maxLines: null,
                                            onTap: () {
                                              setState(() {
                                                isMessageTextFieldActive = true;
                                              });
                                            },
                                            onTapOutside: (event) {
                                              setState(() {
                                                // isMessageTextFieldActive = false;
                                                // FocusScope.of(context).unfocus();
                                              });
                                            },
                                            onEditingComplete: () {
                                              setState(() {
                                                isMessageTextFieldActive = false;
                                                FocusScope.of(context).unfocus();
                                              });
                                            },
                                            onSubmitted: (value) {
                                              setState(() {
                                                isMessageTextFieldActive = false;
                                                FocusScope.of(context).unfocus();
                                              });
                                            },
                                            textCapitalization:
                                                TextCapitalization.sentences,
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              errorBorder: InputBorder.none,
                                              enabledBorder: InputBorder.none,
                                              disabledBorder: InputBorder.none,
                                              hintText: isRecording
                                                  ? "Recording...."
                                                  : "Write a message...",
                                            ),
                                          ),
                                        ),
                                        gapW8,
                                        if (!isRecording)
                                          GestureDetector(
                                            child: SvgPicture.asset(
                                              "assets/icons/gallery.svg",
                                              height: 20,
                                              width: 20,
                                            ),
                                            onTap: () async {
                                              _viewModel.sendImageMessage(
                                                  context, ImageSource.gallery,);
                                            },
                                          ),
                                        gapW4,
                                        if (!isRecording)
                                          GestureDetector(
                                            onTap: () async {
                                              if (Platform.isIOS) {
                                                final hasEmojiKeyboard =
                                                    await KeyboardEmojiPicker()
                                                        .checkHasEmojiKeyboard();
                                                if (hasEmojiKeyboard) {
                                                  // Open the keyboard.
                                                  final emoji =
                                                      await KeyboardEmojiPicker()
                                                          .pickEmoji();
                                                  if (emoji != null) {
                                                    _messageController.text +=
                                                        emoji;
                                                  } else {
                                                    print("no emoji");
                                                  }
                                                } else {
                                                  // Use another way to pick an emoji or show a dialog asking the user to
                                                  // enable the emoji keyboard.
                                                }
                                              } else {
                                                showModalBottomSheet(
                                                  context: context,
                                                  builder: (context) {
                                                    return SizedBox(
                                                      height: 300,
                                                      child: EmojiPicker(
                                                        textEditingController:
                                                            _messageController,
                                                        onEmojiSelected:
                                                            (category, emoji) {
                                                          // _messageController.text += emoji.emoji;
                                                          Navigator.pop(context);
                                                        },
                                                        // onBackspacePressed: _onBackspacePressed,
                                                        config: Config(
                                                          columns: 7,
                                                          // Issue: https://github.com/flutter/flutter/issues/28894
                                                          emojiSizeMax: 32 *
                                                              (foundation.defaultTargetPlatform ==
                                                                      TargetPlatform
                                                                          .iOS
                                                                  ? 1.30
                                                                  : 1.0),
                                                          verticalSpacing: 0,
                                                          horizontalSpacing: 0,
                                                          gridPadding:
                                                              EdgeInsets.zero,
                                                          initCategory:
                                                              Category.RECENT,
                                                          bgColor: const Color(
                                                              0xFFF2F2F2,),
                                                          indicatorColor:
                                                              Colors.blue,
                                                          iconColor: Colors.grey,
                                                          iconColorSelected:
                                                              Colors.blue,
                                                          backspaceColor:
                                                              Colors.blue,
                                                          skinToneDialogBgColor:
                                                              Colors.white,
                                                          skinToneIndicatorColor:
                                                              Colors.grey,
                                                          enableSkinTones: true,
                                                          recentTabBehavior:
                                                              RecentTabBehavior
                                                                  .RECENT,
                                                          recentsLimit: 28,
                                                          replaceEmojiOnLimitExceed:
                                                              false,
                                                          noRecents: const Text(
                                                            'No Recents',
                                                            style: TextStyle(
                                                                fontSize: 20,
                                                                color: Colors
                                                                    .black26,),
                                                            textAlign:
                                                                TextAlign.center,
                                                          ),
                                                          loadingIndicator:
                                                              const SizedBox
                                                                  .shrink(),
                                                          tabIndicatorAnimDuration:
                                                              kTabScrollDuration,
                                                          categoryIcons:
                                                              const CategoryIcons(),
                                                          buttonMode:
                                                              ButtonMode.MATERIAL,
                                                          checkPlatformCompatibility:
                                                              true,
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              }
                                            },
                                            child: SvgPicture.asset(
                                              "assets/icons/emoji.svg",
                                              height: 30,
                                              width: 30,
                                            ),
                                          ),
                                        gapW4,
                                        gapW4,
                                        GestureDetector(
                                          onTap: () {
                                            toggleRecording();
                                            HapticFeedback.heavyImpact();
                                          },
                                          child: Icon(
                                              isRecording
                                                  ? Icons.stop
                                                  : Icons.mic,
                                              color: primaryColor,),
                                        ),
                                        gapW8,
                                        GestureDetector(
                                          onTap: () {
                                            HapticFeedback.heavyImpact();
                                            _viewModel
                                                .sendDocumentMessage(context);
                                          },
                                          child: const Icon(
                                              Icons.attach_file_rounded,
                                              color: primaryColor,),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            gapW10,
                            InkWell(
                              onTap: () {
                                if (_messageController.text.isNotEmpty) {
                                  // _viewModel.sendChatMessage(content: _viewModel.encryptText(_messageController.text));
                                  _viewModel.sendChatMessage(
                                      content: _messageController.text.trim(),);
                                  _viewModel.sendChatNotification(
                                      ChatNotificationRequestModel(
                                          receiverUserId:
                                              widget.peerUserModel.id ?? "",),);
                                  _messageController.clear();
                                  _scrollController.jumpTo(
                                      _scrollController.position.maxScrollExtent,);
                                  setState(() {});
                                }
                              },
                              child: SvgPicture.asset(
                                'assets/icons/send-comment.svg',
                                height: 45,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    gapH32,
                  ],
                )
              : const Center(
                  child: CircularProgressIndicator(
                    color: primaryColor,
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

  Future<void> launchDocumentUrl(String documentUrl) async {
    if (await canLaunch(documentUrl)) {
      await launch(documentUrl);
    } else {
      // Handle error
      print('Could not launch $documentUrl');
    }
  }
}

String _getDocumentType(String message) {
  if (message.contains(".PNG") ||
      message.contains(".png") ||
      message.contains(".jpeg") ||
      message.contains(".JPEG")) {
    return "image";
  } else if (message.contains("pdf")) {
    return "pdf";
  } else if (message.contains(".doc") || message.contains("docx")) {
    return "doc";
  } else if (message.contains("xlsx")) {
    return "excel";
  } else if (message.contains(".mp4")) {
    return "mp4";
  } else {
    return "other";
  }
}

Widget _buildDocumentWidget(String documentType, String message) {
  switch (documentType) {
    case "image":
      return Image(image:  NetworkImage(message, ), fit: BoxFit.cover);
    case "pdf":
    case "doc":
    case "excel":
    case "mp4":
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.attach_file, color: primaryColor, size: 30.h),
          Text('Attachment - ${documentType.toUpperCase()}'),
        ],
      );
    default:
      return Icon(Icons.attach_file, color: primaryColor, size: 30.h);
  }
}
