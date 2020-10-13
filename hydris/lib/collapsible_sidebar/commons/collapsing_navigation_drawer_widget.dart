import '../custom_navigation_drawer.dart';
import 'package:flutter/material.dart';

class CollapsingNavigationDrawer extends StatefulWidget {
  @override
  CollapsingNavigationDrawerState createState() {
    return CollapsingNavigationDrawerState();
  }
}

class CollapsingNavigationDrawerState extends State<CollapsingNavigationDrawer>
    with SingleTickerProviderStateMixin {
  double max_width = 250;
  double min_width = 70;
  bool is_collapsed = false;
  AnimationController _animationController;
  Animation<double> width_animation;
  int current_selected_index = 0;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    width_animation = Tween<double>(begin: max_width, end: min_width)
        .animate(_animationController);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) => get_widget(context, widget),
    );
  }

  Widget get_widget(context, widget) {
    return Material(
      elevation: 80.0,
      child: Container(
        width: width_animation.value,
        color: drawer_background_color,
        child: Column(
          children: <Widget>[
            CollapsingListTile(
              title: 'Techie',
              icon: Icons.person,
              animation_controller: _animationController,
            ),
            Divider(
              color: Colors.grey,
              height: 40.0,
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, counter) {
                  return Divider(
                    height: 12.0,
                  );
                },
                itemBuilder: (context, counter) {
                  return CollapsingListTile(
                    title: navigation_items[counter].title,
                    icon: navigation_items[counter].icon,
                    animation_controller: _animationController,
                    on_tap: () {
                      setState(() {
                        current_selected_index = counter;
                      });
                    },
                  );
                },
                itemCount: navigation_items.length,
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  is_collapsed = !is_collapsed;
                  is_collapsed
                      ? _animationController.forward()
                      : _animationController.reverse();
                });
              },
              child: AnimatedIcon(
                icon: AnimatedIcons.close_menu,
                progress: _animationController,
                color: selected_color,
                size: 50.0,
              ),
            ),
            SizedBox(
              height: 50.0,
            )
          ],
        ),
      ),
    );
  }
}
