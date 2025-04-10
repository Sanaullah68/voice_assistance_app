import 'package:allen/colors.dart';
import 'package:allen/feature_box.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Allen'),
        leading: const Icon(Icons.menu),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Center(
                child: Container(
                  height: 120,
                  width: 120,
                  margin: const EdgeInsets.only(top: 4),
                  decoration: const BoxDecoration(
                    color: Pallete.assistantCircleColor,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Container(
                height: 123,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/virtualAssistant.png'),
                  ),
                ),
              )
            ],
          ),
          //chat bubble
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            margin:
                const EdgeInsets.symmetric(horizontal: 40).copyWith(top: 30),
            decoration: BoxDecoration(
                border: Border.all(
                  color: Pallete.borderColor,
                ),
                borderRadius: BorderRadius.circular(20).copyWith(
                  topLeft: Radius.zero,
                )),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                "Good Morning what task can I do for you?",
                style: TextStyle(
                    color: Pallete.mainFontColor,
                    fontSize: 25,
                    fontFamily: 'Cera Pro'),
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(top: 10, left: 22),
            child: const Text(
              'Here are a few features',
              style: TextStyle(
                  fontFamily: 'Cera Pro',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Pallete.mainFontColor),
            ),
          ),
          const Column(
            children: [
              FeatureBox(
                headerText: 'ChatGPT',
                descriptionText:
                    "A smarter way to stay organised and informed with ChatGPT",
                color: Pallete.firstSuggestionBoxColor,
              ),
              FeatureBox(
                headerText: 'Dall-E',
                descriptionText:
                    "Get Inspired and stay creative with your personal assistance powered by Dall-E",
                color: Pallete.secondSuggestionBoxColor,
              ),
              FeatureBox(
                headerText: 'Smart Voice Assistance',
                descriptionText:
                    "Get the best of both worlds with a voice assistance powered by Dall-E and chatGPT",
                color: Pallete.thirdSuggestionBoxColor,
              ),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Pallete.firstSuggestionBoxColor,
        onPressed: () {},
        child: const Icon(Icons.mic),
      ),
    );
  }
}
