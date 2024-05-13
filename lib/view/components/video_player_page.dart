import 'package:chewie/chewie.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerPage extends ConsumerStatefulWidget {
  final String videoUrl;
  const VideoPlayerPage({super.key, required this.videoUrl});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends ConsumerState<VideoPlayerPage> {

  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;
  bool videoLoader = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      _videoPlayerController = VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl));
      _chewieController = ChewieController(
        videoPlayerController: _videoPlayerController,
        allowMuting: false,
        allowFullScreen: false,
        autoInitialize: true,
      );
    });

    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        videoLoader = false;
      });
    });
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: false,
          leading: Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {
                _videoPlayerController.dispose();
                _chewieController.dispose();
                context.pop();
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
          // actions: [
          //   Container(
          //     padding: const EdgeInsets.all(8),
          //     child: MaterialButton(
          //       onPressed: () {},
          //       shape: const CircleBorder(),
          //       elevation: 0,
          //       color: const Color(0xffF3F5F6),
          //       child: const Icon(Icons.more_horiz, color: primaryColor,),
          //     ),
          //   ),
          // ],
        ),

      body: Container(
        height: size.height,
        width: size.width,
        padding: const EdgeInsets.symmetric(vertical: 60),
        child: videoLoader 
        ? const Center(child: CircularProgressIndicator(color: primaryColor,),)
        : AspectRatio(
          aspectRatio: _videoPlayerController.value.aspectRatio,
          child: Chewie(
            controller: _chewieController,
          ),
        ),
      ),
    );
  }
}
