import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int imageIndex = 0;

  List images = [
    "images/logo1.png",
    "images/logo2.png",
    "images/logo3.png",
    "images/logo4.png",
  ];

  onNextImage() {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: const Text(
        "OPs! No more images to display",
      ),
      action: SnackBarAction(
        onPressed: () {
          setState(() {
            imageIndex = 0;
          });
        },
        label: "Reset Image",
      ),
      behavior: SnackBarBehavior.fixed,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          height: MediaQuery.of(context).size.height / 2,
          // color: Colors.grey,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(images[imageIndex]),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  if (imageIndex == 0) {
                    imageIndex = 0;
                  } else {
                    imageIndex--;
                  }
                }
                );
              },
              style: TextButton.styleFrom(backgroundColor: Colors.teal),
              child: const Text(
                "Previous Image",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Icon(
              FeatherIcons.image,
            ),
            TextButton(
              onPressed: () {
                setState(
                  () {
                    if (imageIndex < images.length - 1) {
                      imageIndex++;
                    } else {
                      imageIndex = images.length - 1;
                      onNextImage();
                    }
                  },
                );
              },
              style: TextButton.styleFrom(backgroundColor: Colors.red),
              child: const Text("Next Image",
                  style: TextStyle(color: Colors.white)),
            ),
          ],
        )
      ]),
    );
  }
}
