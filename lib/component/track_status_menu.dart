import 'package:flutter/material.dart';

class TrackStatusMenu extends StatefulWidget {
  const TrackStatusMenu({Key? key}) : super(key: key);

  @override
  State<TrackStatusMenu> createState() => _TrackStatusMenuState();
}

class _TrackStatusMenuState extends State<TrackStatusMenu> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        height: 200,
        width: MediaQuery.of(context).size.width,
        color: Colors.purple,
      ),
    );
  }
}
