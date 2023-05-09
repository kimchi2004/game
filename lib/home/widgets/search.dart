import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Stack(children: [
          TextField(
            cursorColor: const Color(0xFFFFC000),
            decoration: InputDecoration(
                fillColor: const Color(0xFFF6F8FF),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 0,
                ),
                prefixIcon: const Icon(
                  Icons.search_outlined,
                  color: Color(0xFFFFC000),
                  size: 30,
                ),
                hintText: 'Search game',
                hintStyle: const TextStyle(
                  color: Color(0xFFB0B0B0),
                  fontSize: 14,
                )),
          ),
          Positioned(
            bottom: 6,
            right: 12,
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFFFFC000),
              ),
              child: const Icon(
                Icons.mic_outlined,
                color: Colors.white,
                size: 25,
              ),
            ),
          )
        ]));
  }
}