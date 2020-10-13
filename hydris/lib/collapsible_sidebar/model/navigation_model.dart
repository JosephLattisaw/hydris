import 'package:flutter/material.dart';

class NavigationModel {
  String title;
  IconData icon;

  NavigationModel({this.title, this.icon});
}

List<NavigationModel> navigation_items = [
  NavigationModel(title: "Home", icon: Icons.home),
  NavigationModel(title: "Events", icon: Icons.update),
  NavigationModel(title: "Upcoming Bids", icon: Icons.announcement),
  NavigationModel(title: "Proposal", icon: Icons.add),
  NavigationModel(title: "Projects", icon: Icons.construction),
  NavigationModel(title: "Appointment", icon: Icons.calendar_today),
  NavigationModel(title: "About", icon: Icons.info),
  NavigationModel(title: "Contact", icon: Icons.contact_mail),
];
