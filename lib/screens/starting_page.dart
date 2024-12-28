import 'package:flutter/material.dart';
import 'package:photo_picker_initial/screens/explore_screen.dart';
import 'package:photo_picker_initial/screens/set_photo_screen.dart';

class StartingPage extends StatelessWidget {
  const StartingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 125,
            ),
            const Text(
              "Fish Idientification",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                "Are you a software developer looking for JDK downloads? OpenJDK Early Access Builds",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ExploreScreen(),
                  ),
                );
              },
              child: Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.blue,
                  ),
                  image: const DecorationImage(
                    image: AssetImage(
                      "assets/fish.jpg",
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // Container(
            //   height: 40,
            //   width: 275,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(5),
            //     color: Colors.grey.shade300,
            //     border: Border.all(
            //       color: Colors.black,
            //     ),
            //   ),
            //   child: const Center(
            //     child: Text(
            //       "Explore",
            //       style: TextStyle(fontSize: 15),
            //     ),
            //   ),
            // ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SetPhotoScreen(),
                ),
              ),
              child: Container(
                height: 40,
                width: 275,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey.shade300,
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: const Center(
                  child: Text(
                    "Get Started",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
