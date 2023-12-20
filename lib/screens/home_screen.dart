import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home(this.changeActiveScreen,{super.key});
  final void Function () changeActiveScreen;

  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
              color: Colors.amber.withOpacity(.5),
            ),
            const Text(
              'Learn Flutter',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            OutlinedButton.icon(
              icon:const Icon(Icons.start),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white
              ),
              onPressed:changeActiveScreen,
              label:const Text("Start with"),
            ),
          ],
      ),
    );
  }
}
