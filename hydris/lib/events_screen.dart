import 'package:flutter/material.dart';
import 'package:hydris/app_bar.dart';
import 'package:hydris/event_card.dart';
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
      drawer: MainDrawer(),
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
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                    top: BorderSide(
                        width: 10.0, color: Theme.of(context).accentColor)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(
                  "UPCOMING EVENTS",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).accentColor,
                      fontSize: 15),
                ),
              ),
            ),
            Stack(alignment: Alignment.center, children: [
              Text(
                "EVENTS",
                style: TextStyle(
                  fontSize: 70,
                  fontWeight: FontWeight.bold,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = .4
                    ..color = Colors.grey,
                ),
              ),
              Text(
                "EVENTS",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 70,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "EVENTS",
                style: TextStyle(
                    color: Theme.of(context).secondaryHeaderColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ]),
            EventCard(
              title: "Grand Opening",
              description: "Sunday . 9am - 11am",
              date: "13",
              month: "Jan",
              bgColor: Theme.of(context).secondaryHeaderColor,
              txtColor: Theme.of(context).accentColor,
              picture: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: 10000000,
                  ),
                  child: Image.asset(
                    "assets/grandopening.jpg",
                    fit: BoxFit.fitHeight,
                  )),
            ),
            SizedBox(
              height: 5,
            ),
            EventCard(
              title: "Red Tape Cutting",
              description: "Sunday . 9am - 11am",
              date: "16",
              month: "Jan",
              bgColor: Theme.of(context).secondaryHeaderColor,
              txtColor: Theme.of(context).accentColor,
              picture: ConstrainedBox(
                  constraints:
                      BoxConstraints(maxHeight: 100000, maxWidth: 1000000),
                  child: Image.asset(
                    "assets/redtape.jpg",
                    fit: BoxFit.cover,
                  )),
            ),
            SizedBox(
              height: 5,
            ),
            EventCard(
              title: "Demolition of Skyscraper",
              description: "Sunday . 9am - 11am",
              date: "3",
              month: "Mar",
              bgColor: Theme.of(context).secondaryHeaderColor,
              txtColor: Theme.of(context).accentColor,
              picture: Image.asset("assets/grandopening.jpg"),
            ),
            SizedBox(
              height: 5,
            ),
            EventCard(
              title: "Breaking Ground",
              description: "Sunday . 9am - 11am",
              date: "20",
              month: "Apr",
              bgColor: Theme.of(context).secondaryHeaderColor,
              txtColor: Theme.of(context).accentColor,
              picture: Image.asset("assets/grandopening.jpg"),
            ),
            SizedBox(
              height: 5,
            ),
            EventCard(
              title: "Road Pavement",
              description: "Sunday . 9am - 11am",
              date: "13",
              month: "Jun",
              bgColor: Theme.of(context).primaryColor,
              txtColor: Theme.of(context).accentColor,
              picture: Image.asset("assets/grandopening.jpg"),
            )
          ],
        ),
      ),
    );
  }
}
