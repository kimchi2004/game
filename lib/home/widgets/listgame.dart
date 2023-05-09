import 'package:flutter/material.dart';

import '../../models/game.dart';

class ListGame extends StatelessWidget {
  final List<Game> listGames = Game.generateGames();
  ListGame({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: listGames
              .map((e) => Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(16)),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      e.icon,
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 8,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            e.name,
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    e.type,
                                    style: TextStyle(
                                        color: const Color.fromARGB(
                                            255, 76, 76, 76)
                                            .withOpacity(0.8),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  _buildStar(),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: BtnPlay(),
                ),
              ],
            ),
          ))
              .toList(),
        ),
      );
  }

  Widget _buildStar() {
    final List<Color> color = [
      Colors.amber,
      Colors.amber,
      Colors.amber,
      Colors.amber,
      const Color.fromARGB(255, 76, 76, 76).withOpacity(0.3)
    ];
    return Row(
      children: color
          .map((e) => Icon(
        Icons.star,
        color: e,
        size: 16,
      ))
          .toList(),
    );
  }
}

class BtnPlay extends StatefulWidget {
  const BtnPlay({Key? key}) : super(key: key);

  @override
  State<BtnPlay> createState() => _BtnPlayState();
}

class _BtnPlayState extends State<BtnPlay> {
  var btnText = 'Play';
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      padding: const EdgeInsets.only(right: 10.0),
      child: ElevatedButton(
        onPressed: () {
          if(btnText!='') {
            setState(() {
              btnText = '';
            });
          }
          else {
            setState(() {
              btnText = 'Play';
            });
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFFFC000),
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Text(
          btnText,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

