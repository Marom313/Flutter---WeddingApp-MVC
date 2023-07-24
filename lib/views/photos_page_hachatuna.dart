// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:photo_view/photo_view.dart';
import 'package:url_launcher/url_launcher.dart';

//Lists of each Album in PhotosPage
final List<String> imageAddresses = [
  'assets/images/no-image.png',
  'assets/images/11.jpg',
  'assets/images/WeddingPhotoBack12.jpg',
  'assets/images/Diamond10.webp',
  'assets/images/WeddingPhotoBack3.jpg',
  'assets/images/WeddingPhotoBack2.jpg',
  'assets/images/WeddingPhotoBack4.jpg',
  'assets/images/WeddingPhotoBack5.jpg',
  'assets/images/WeddingPhotoBack6.jpg',
  'assets/images/WeddingPhotoBack7.jpg',
  // 'assets/images/WeddingPhotoBack8.jpg',
  'assets/images/WeddingPhotoBack9.jpg',
  // 'assets/images/WeddingPhotoBack10.jpg',
  'assets/images/WeddingPhotoBack13.jpg',
  'assets/images/WeddingPhotoBack12.jpg',
  'assets/images/WeddingPhotoBack11.jpg',
  'assets/images/WeddingPhotoBack14.jpg',
  'assets/images/WeddingPhotoBack15.jpg',
  'assets/images/WeddingPhotoBack16.jpg',
  'assets/images/WeddingPhotoBack17.jpg',
  'assets/images/WeddingPhotoBack18.jpg',
  'assets/images/WeddingPhotoBack19.jpg',
  'assets/images/WeddingPhotoBack20.jpg',
  'assets/images/WeddingPhotoBack23.jpg',
  'assets/images/WeddingPhotoBack22.jpg',
  'assets/images/WeddingPhotoBack21.jpg',
  'assets/images/WeddingPhotoBack24.jpg',
  'assets/images/WeddingPhotoBack25.jpg',
  'assets/images/WeddingPhotoBack26.jpg',
  'assets/images/WeddingPhotoBack27.jpg',
  'assets/images/WeddingPhotoBack28.jpg',
  'assets/images/WeddingPhotoBack29.jpg',
  'assets/images/WeddingPhotoBack30.jpg',
  // Add more image addresses here
];

class PhotoGallery extends StatefulWidget {
  const PhotoGallery({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  // ignore: library_private_types_in_public_api
  _MyPhotoGalleryState createState() => _MyPhotoGalleryState();
}

class _MyPhotoGalleryState extends State<PhotoGallery> {
  int currentIndex = 0;
  bool isFullScreen = false;
  bool isLiked = false;
  bool showCloseButton = false;

  void goToNextPhoto() {
    setState(() {
      currentIndex = (currentIndex + 1) % imageAddresses.length;
    });
  }

  void goToPreviousPhoto() {
    setState(() {
      currentIndex =
          (currentIndex - 1 + imageAddresses.length) % imageAddresses.length;
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
    String currentImage = imageAddresses[currentIndex];

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
                      imageProvider: AssetImage(imageAddresses[currentIndex]),
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
              itemCount: imageAddresses.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      currentIndex = index;
                      isFullScreen = true;
                    });
                  },
                  child: Image.asset(
                    imageAddresses[index],
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
    );
  }
}
