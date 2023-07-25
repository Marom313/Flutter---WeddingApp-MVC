// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:photo_view/photo_view.dart';
import 'package:url_launcher/url_launcher.dart';

final List<String> imageAddresses3 = [
  'assets/images/no-image.png',
  'assets/images/no-image.png',
  'assets/images/no-image.png',
  'assets/images/no-image.png',
  // 'assets/images/no-image.png',
  // 'assets/images/no-image.png',
  // 'assets/images/no-image.png',
];

class PhotoGallery3 extends StatefulWidget {
  const PhotoGallery3({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  // ignore: library_private_types_in_public_api
  _MyPhotoGallery3State createState() => _MyPhotoGallery3State();
}

class _MyPhotoGallery3State extends State<PhotoGallery3> {
  int currentIndex = 0;
  bool isFullScreen = false;
  bool isLiked = false;
  bool showCloseButton = false;

  void goToNextPhoto() {
    setState(() {
      currentIndex = (currentIndex + 1) % imageAddresses3.length;
    });
  }

  void goToPreviousPhoto() {
    setState(() {
      currentIndex =
          (currentIndex - 1 + imageAddresses3.length) % imageAddresses3.length;
    });
  }

  void toggleFullScreen() {
    setState(() {
      isFullScreen = !isFullScreen;
    });
  }

  void toggleLike() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  void closeFullScreen() {
    setState(() {
      isFullScreen = false;
      showCloseButton = false;
    });
  }

  void openImageDirectory() async {
    Directory appDirectory = await getApplicationDocumentsDirectory();
    String imagesPath = appDirectory.path;

    await OpenFile.open(imagesPath);
  }

  void shareImage() async {
    String currentImage = imageAddresses3[currentIndex];

    // Check if WhatsApp is installed on the device
    // ignore: deprecated_member_use
    bool isWhatsAppInstalled = await canLaunch("whatsapp://send");
    if (isWhatsAppInstalled) {
      // Share image via WhatsApp
      String whatsappUrl = "whatsapp://send?text=$currentImage";
      // ignore: deprecated_member_use
      await launch(whatsappUrl);
    } else {
      // Share image via email
      String emailSubject = "Check out this photo";
      String emailBody = "Hey, I found this amazing photo!\n$currentImage";
      String emailUrl = "mailto:?subject=$emailSubject&body=$emailBody";
      // ignore: deprecated_member_use
      await launch(emailUrl);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.black,
      ),
      body: isFullScreen
          ? Stack(
              children: [
                Container(
                  color: Colors.black,
                  child: SizedBox(
                    child: PhotoView(
                      imageProvider: AssetImage(imageAddresses3[currentIndex]),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: Icon(
                        isLiked ? Icons.favorite : Icons.favorite_border,
                        color: Colors.white,
                      ),
                      onPressed: toggleLike,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.share,
                        color: Colors.white,
                      ),
                      onPressed: shareImage,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Positioned(
                          left: 350,
                          child: IconButton(
                            onPressed: closeFullScreen,
                            icon: Icon(
                              Icons.close,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          onPressed: goToPreviousPhoto,
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                          onPressed: goToNextPhoto,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            )
          : GridView.builder(
              padding: const EdgeInsets.all(8.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,
              ),
              itemCount: imageAddresses3.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      currentIndex = index;
                      isFullScreen = true;
                    });
                  },
                  child: Image.asset(
                    imageAddresses3[index],
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
    );
  }
}
