import '../custom_navigation_drawer.dart';
import 'package:flutter/material.dart';

class CollapsingListTile extends StatefulWidget {
  final String title;
  final IconData icon;
  final AnimationController animation_controller;
  final bool is_selected;
  final Function on_tap;

  CollapsingListTile(
      {@required this.title,
      @required this.icon,
      @required this.animation_controller,
      this.is_selected = false,
      this.on_tap});

  @override
  _CollapsingListTileState createState() => _CollapsingListTileState();
}

class _CollapsingListTileState extends State<CollapsingListTile> {
  Animation<double> width_animation, sized_box_animation;

  @override
  void initState() {
    super.initState();
    width_animation =
        Tween<double>(begin: 200, end: 0).animate(widget.animation_controller);
    sized_box_animation =
        Tween<double>(begin: 10, end: 0).animate(widget.animation_controller);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.on_tap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
          color: widget.is_selected
              ? Colors.transparent.withOpacity(0.3)
              : Colors.transparent,
        ),
        width: width_animation.value,
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        child: Row(
          children: <Widget>[
            Icon(
              widget.icon,
              color: widget.is_selected ? selected_color : Colors.white30,
              size: 38.0,
            ),
            SizedBox(
              width: sized_box_animation.value,
            ),
            (width_animation.value >= 100)
                ? Text(widget.title,
                    style: widget.is_selected
                        ? list_title_selected_text_style
                        : list_title_default_text_style)
                : Container()
          ],
        ),
      ),
    );
  }
}
