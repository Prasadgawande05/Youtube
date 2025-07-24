import 'package:flutter/material.dart';
import 'package:prasad/Custom_Widget/Customcontainer.dart';

class Youtubecustom extends StatelessWidget {
  const Youtubecustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text(
                "YouTube Shorts",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              CustomContainer(
                title: 'Short 1',
                description: 'Funny animal video',
                imageUrl: 'https://placekitten.com/400/200',
                buttonText: 'Watch',
                onPressed: () {
                  // Add navigation or action here
                },
              ),
              const SizedBox(height: 20),
              CustomContainer(
                title: 'Short 2',
                description: 'Epic fails compilation',
                imageUrl: 'https://placebear.com/400/200',
                buttonText: 'Watch Now',
                onPressed: () {
                  // Add navigation or action here
                },
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
