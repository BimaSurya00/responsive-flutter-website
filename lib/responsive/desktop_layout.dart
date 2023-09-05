import 'package:flutter/material.dart';
import 'package:responsive_website/utils/my_box.dart';
import 'package:responsive_website/utils/my_tile.dart';

import '../constants.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackgroundColor,
      appBar: myAppBar,
      body: Row(
        children: [
          myDrawer,
          Expanded(
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 4,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                      ),
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return const MyBox();
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return const MyTile();
                    },
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: Container(
            color: Colors.red,
          ))
        ],
      ),
    );
  }
}
