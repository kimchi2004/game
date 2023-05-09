import 'package:flutter/material.dart';
import 'package:listgame/home/widgets/appbar.dart';
import 'package:listgame/home/widgets/listgame.dart';
import 'package:listgame/home/widgets/search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.cover,
            )
          ),
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bee.png'),
                  fit: BoxFit.cover,
                )
            ),
            child: Column(
              children: const [
                AppBarWidget(),
                Search(),
                ListGameView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ListGameView extends StatelessWidget {
  const ListGameView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey[700],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 0,
                width: 1000,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                width: double.maxFinite,
                child: const Text(
                  'List Game',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                      height: 1.8),
                ),
              ),
              ListGame(),
            ],
          ),
        ),
      ),
    );
  }
}
