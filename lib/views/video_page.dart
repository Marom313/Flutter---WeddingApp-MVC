import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:wedding_final_mvc/Constants/video_constants.dart';

import '../Constants/colors_constants.dart';

class VideosPage extends StatefulWidget {
  const VideosPage({super.key});

  @override
  State<VideosPage> createState() => _VideosPageState();
}

class _VideosPageState extends State<VideosPage> {
  late VideoPlayerController _controller;
  int _currentIndex = 0;

  void _playVideo({int index = 0, bool init = false}) {
    if (index < 0 || index >= videos.length) return;

    _controller = VideoPlayerController.asset(videos[_currentIndex].asset_name)
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((value) => _controller.play());
  }

  @override
  void initState() {
    super.initState();
    _playVideo(init: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CcolorConstants.app_bar_color,
        centerTitle: true,
        title: const Text(
          'וידאו',
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.deepPurpleAccent,
            height: 300,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: videos.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 100,
                          width: 100,
                          child: Image.asset(videos[index].thumbnail,
                              fit: BoxFit.contain),
                        )
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
