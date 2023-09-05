import 'package:flutter/material.dart';

var myAppBar = AppBar(
  backgroundColor: Colors.grey[900],
);

var myDefaultBackgroundColor = Colors.grey[300];

var myDrawer = Drawer(
        backgroundColor: Colors.grey[300],
        child: Column(
          children: [
            DrawerHeader(child: Icon(Icons.phone_android_sharp)),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('About'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text('Contact'),
              onTap: () {},
            ),
          ],
        ),
      );