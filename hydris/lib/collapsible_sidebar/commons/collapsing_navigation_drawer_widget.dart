import '../custom_navigation_drawer.dart';
import 'package:flutter/material.dart';

class CollapsingNavigationDrawer extends StatefulWidget {
  final Function onTap;

  CollapsingNavigationDrawer({this.onTap});

  @override
  CollapsingNavigationDrawerState createState() {
    return CollapsingNavigationDrawerState(onTap: onTap);
  }
}

class CollapsingNavigationDrawerState extends State<CollapsingNavigationDrawer>
    with SingleTickerProviderStateMixin {
  static const double MAX_WIDTH = 250;
  static const double MIN_WIDTH = 70;
  bool _isCollapsed = false;
  AnimationController _animationController;
  Animation<double> widthAnimation;
  int currentSelectedIndex = 0;
  final Function onTap;

  CollapsingNavigationDrawerState({this.onTap});

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    widthAnimation = Tween<double>(begin: MAX_WIDTH, end: MIN_WIDTH)
        .animate(_animationController);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) => getWidget(context, widget),
    );
  }

  Widget getWidget(context, widget) {
    return Material(
      elevation: 80.0,
      child: Container(
        width: widthAnimation.value,
        color: drawer_background_color,
        child: Column(
          children: <Widget>[
            CollapsingListTile(
              title: 'Guest',
              icon: Icons.person,
              animationController: _animationController,
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
                    animationController: _animationController,
                    isSelected: currentSelectedIndex == counter,
                    onTap: () {
                      setState(() {
                        if (currentSelectedIndex != counter) {
                          currentSelectedIndex = counter;
                          onTap(currentSelectedIndex);
                        }
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
                  _isCollapsed = !_isCollapsed;
                  _isCollapsed
                      ? _animationController.forward()
                      : _animationController.reverse();
                });
              },
              child: AnimatedIcon(
                icon: AnimatedIcons.close_menu,
                progress: _animationController,
                color: selected_color,
                size: 38.0,
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
