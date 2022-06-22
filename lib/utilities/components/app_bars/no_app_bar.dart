import 'package:flutter/material.dart';
import 'package:vector_math/vector_math.dart' as math;
class NoAppBar extends StatefulWidget  with PreferredSizeWidget {

  @override
  final Size preferredSize;


  NoAppBar( {Key? key})
      : preferredSize = const Size.fromHeight(56.0),
        super(key: key);
  @override
  _NoAppBarState createState() => _NoAppBarState();
}

class _NoAppBarState extends State<NoAppBar> {

  @override
  Widget build(BuildContext context) {
    return AppBar(
      foregroundColor: Colors.transparent,
      bottomOpacity: 0.10,
      elevation: 0,
      toolbarHeight: 0,
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
    );
  }
}
