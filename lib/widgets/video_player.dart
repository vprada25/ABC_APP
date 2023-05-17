import 'package:ABC/widgets/auth_background.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  final String videoUrl;

  const VideoPlayerWidget({required this.videoUrl, Key? key}) : super(key: key);

  @override
  _VideoPlayerWidgetState createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController _controller;
  final _videoPlayerKey = UniqueKey();

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.videoUrl)
      ..initialize().then((_) {
        setState(() {
          _controller.play(); // Reproducir automáticamente el video
        });
      });
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
        title: const Text('Estamos Aprendiendo'),
      ),
      body: AuthBackground(
          child: Center(
        child: _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
            : const CircularProgressIndicator(),
      )),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
              heroTag: 'btn0',
              tooltip: 'Volver al menu',
              backgroundColor: Colors.lightGreen,
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back)),
          FloatingActionButton(
            heroTag: 'btn1',
            backgroundColor: Colors.indigoAccent,
            onPressed: () {
              setState(() {
                _controller.value.isPlaying
                    ? _controller.pause()
                    : _controller.play();
              });
            },
            child: Icon(
              _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
            ),
          ),
          FloatingActionButton(
            heroTag: 'btn2',
            backgroundColor: Colors.indigoAccent,
            onPressed: () {
              setState(() {
                _controller.seekTo(Duration.zero);
              });
            },
            child: const Icon(Icons.replay),
          ),
        ],
      ),
    );
  }
}
