import 'package:flutter/material.dart';
import 'package:hydris/app_bar.dart';
import 'package:hydris/main_drawer.dart';
import 'package:video_player/video_player.dart';

class EventsScreen extends StatefulWidget {
  EventsScreen({Key key}) : super(key: key);

  @override
  _EventsScreenState createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFeature;

  @override
  void initState() {
    _controller = VideoPlayerController.asset("assets/file.mp4");
    _controller.addListener(() {
      setState(() {});
    });

    _controller.setLooping(true);
    _controller.initialize().then((_) => setState(() {}));
    _controller.play();

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HydrisAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .25,
              child: AspectRatio(
                aspectRatio: double.maxFinite,
                child: VideoPlayer(_controller),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
