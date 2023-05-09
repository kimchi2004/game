import 'package:flutter/material.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      shape: const ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(100),
            bottomRight: Radius.circular(100),
          )
      ),
      backgroundColor: const Color(0xFFFFC000),
      leading: const IconButton(
        onPressed: null,
        icon: Icon(
          Icons.menu,
          color: Colors.black,
        ),
      ),
      title: const Text(
        'Bee Bug Arts',
        style: TextStyle(
          color: Colors.black,
          fontSize: 15.0,
          fontWeight: FontWeight.w500,
          height: 1.8),
      ),
      actions: const [
        IconButton(
          onPressed: null,
          icon: Icon(
            Icons.account_circle_outlined,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
