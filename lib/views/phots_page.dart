// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wedding_final_mvc/ui/colors_constants.dart';
import 'package:wedding_final_mvc/views/home_page.dart';
import 'package:wedding_final_mvc/views/photo_page_last_seen.dart';
import 'package:wedding_final_mvc/views/photos_page_hachatuna.dart';
import 'package:wedding_final_mvc/views/photos_page_halla.dart';
import 'package:wedding_final_mvc/views/photos_page_magnetim.dart';
import 'package:wedding_final_mvc/views/photos_page_marom_bach1.dart';
import 'package:wedding_final_mvc/views/photos_page_marom_bach2.dart';
import 'package:wedding_final_mvc/views/photos_page_meital_bach.dart';
import 'package:wedding_final_mvc/views/photos_page_purposal.dart';

class PhotosPage extends StatelessWidget {
  const PhotosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CcolorConstants.background_color,
      appBar: AppBar(
        backgroundColor: CcolorConstants.app_bar_color,
        centerTitle: true,
        title: const Text(
          'תמונות',
          textAlign: TextAlign.center,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // PhotoGallery(title: 'Photo Gallery'),
            SizedBox(
              width: 360,
              height: 140,
              child: GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) =>
                  //         // PhotoGallery(title: 'Photo Gallery'),
                  //   ),
                  // );
                },
                child: Card(
                  shape: const RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(150)),
                  ),
                  clipBehavior: Clip.antiAlias,
                  elevation: 20,
                  color: CcolorConstants.buttons_Color,
                  semanticContainer: true,
                  //implent InkResponse
                  child: InkResponse(
                    splashColor: Colors.blue.withAlpha(3000),
                    containedInkWell: true,
                    highlightShape: BoxShape.rectangle,
                    onTap: () {
                      Get.to(PhotoGallery(
                        title: 'החתונה',
                      ));
                    },
                    //Adding image & text
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/images/WeddingPhotoBack3.jpg',
                          width: 375, // Adjust the width as desired
                          height: 111, // Adjust the height as desired
                          fit: BoxFit.fitWidth,
                        ),
                        const Text(
                          'החתונה',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w300),
                          textAlign: TextAlign.end,
                          selectionColor: Colors.white,
                        ),
                        const SizedBox(height: 2)
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 360,
              height: 140,
              child: GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) =>
                  //         PhotoGallery(title: 'Photo Gallery'),
                  //   ),
                  // );
                },
                child: Card(
                  shape: const RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(150)),
                  ),
                  clipBehavior: Clip.antiAlias,
                  elevation: 20,
                  color: CcolorConstants.buttons_Color,
                  semanticContainer: true,
                  //implent InkResponse
                  child: InkResponse(
                    splashColor: Colors.blue.withAlpha(3000),
                    containedInkWell: true,
                    highlightShape: BoxShape.rectangle,
                    onTap: () {
                      Get.to(PhotoGallery2(
                        title: 'החתונה מגנטים',
                      ));
                    },
                    //Adding image & text
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/images/WeddingPhotoBack13.jpg',
                          width: 375, // Adjust the width as desired
                          height: 111, // Adjust the height as desired
                          fit: BoxFit.fitWidth,
                        ),
                        const Text(
                          'החתונה מגנטים',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w300),
                          textAlign: TextAlign.end,
                          selectionColor: Colors.white,
                        ),
                        const SizedBox(height: 2)
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 360,
              height: 140,
              child: GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) =>
                  //         PhotoGallery3(title: 'Photo Gallery'),
                  //   ),
                  // );
                },
                child: Card(
                  shape: const RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(150)),
                  ),
                  clipBehavior: Clip.antiAlias,
                  elevation: 20,
                  color: CcolorConstants.buttons_Color,
                  semanticContainer: true,
                  //implent InkResponse
                  child: InkResponse(
                    splashColor: Colors.blue.withAlpha(3000),
                    containedInkWell: true,
                    highlightShape: BoxShape.rectangle,
                    onTap: () {
                      Get.to(PhotoGallery3(
                        title: 'הצעת נישואין',
                      ));
                    },
                    //Adding image & text
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/images/WeddingPhotoBack6.jpg',
                          width: 375, // Adjust the width as desired
                          height: 111, // Adjust the height as desired
                          fit: BoxFit.fitWidth,
                        ),
                        const Text(
                          'הצעת נישואין',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w300),
                          textAlign: TextAlign.end,
                          selectionColor: Colors.white,
                        ),
                        const SizedBox(height: 2)
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 360,
              height: 140,
              child: GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) =>
                  //         PhotoGallery4(title: 'Photo Gallery'),
                  //   ),
                  // );
                },
                child: Card(
                  shape: const RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(150)),
                  ),
                  clipBehavior: Clip.antiAlias,
                  elevation: 20,
                  color: CcolorConstants.buttons_Color,
                  semanticContainer: true,
                  //implent InkResponse
                  child: InkResponse(
                    splashColor: Colors.blue.withAlpha(3000),
                    containedInkWell: true,
                    highlightShape: BoxShape.rectangle,
                    onTap: () {
                      Get.to(PhotoGallery4(title: 'הפרשת חלה'));
                    },
                    //Adding image & text
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/images/WeddingPhotoBack7.jpg',
                          width: 375, // Adjust the width as desired
                          height: 111, // Adjust the height as desired
                          fit: BoxFit.fitWidth,
                        ),
                        const Text(
                          'הפרשת חלה',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w300),
                          textAlign: TextAlign.end,
                          selectionColor: Colors.white,
                        ),
                        const SizedBox(height: 2)
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 360,
              height: 140,
              child: GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) =>
                  //         PhotoGallery5(title: 'Photo Gallery'),
                  //   ),
                  // );
                },
                child: Card(
                  shape: const RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(150)),
                  ),
                  clipBehavior: Clip.antiAlias,
                  elevation: 20,
                  color: CcolorConstants.buttons_Color,
                  semanticContainer: true,
                  //implent InkResponse
                  child: InkResponse(
                    splashColor: Colors.blue.withAlpha(3000),
                    containedInkWell: true,
                    highlightShape: BoxShape.rectangle,
                    onTap: () {
                      Get.to(PhotoGallery5(title: 'מסיבת רווקות מיטל'));
                    },
                    //Adding image & text
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/images/WeddingPhotoBack9.jpg',
                          width: 375, // Adjust the width as desired
                          height: 111, // Adjust the height as desired
                          fit: BoxFit.fitWidth,
                        ),
                        const Text(
                          'מסיבת רווקות מיטל',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w300),
                          textAlign: TextAlign.end,
                          selectionColor: Colors.white,
                        ),
                        const SizedBox(height: 2)
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 360,
              height: 140,
              child: GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) =>
                  //         PhotoGallery6(title: 'Photo Gallery'),
                  //   ),
                  // );
                },
                child: Card(
                  shape: const RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(150)),
                  ),
                  clipBehavior: Clip.antiAlias,
                  elevation: 20,
                  color: CcolorConstants.buttons_Color,
                  semanticContainer: true,
                  //implent InkResponse
                  child: InkResponse(
                    splashColor: Colors.blue.withAlpha(3000),
                    containedInkWell: true,
                    highlightShape: BoxShape.rectangle,
                    onTap: () {
                      Get.to(PhotoGallery6(title: 'מרום רווקים אילת'));
                    },
                    //Adding image & text
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/images/WeddingPhotoBack11.jpg',
                          width: 375, // Adjust the width as desired
                          height: 111, // Adjust the height as desired
                          fit: BoxFit.fitWidth,
                        ),
                        const Text(
                          'מרום רווקים אילת',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w300),
                          textAlign: TextAlign.end,
                          selectionColor: Colors.white,
                        ),
                        const SizedBox(height: 2)
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 360,
              height: 140,
              child: GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) =>
                  //         PhotoGallery7(title: 'Photo Gallery'),
                  //   ),
                  // );
                },
                child: Card(
                  shape: const RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(150)),
                  ),
                  clipBehavior: Clip.antiAlias,
                  elevation: 20,
                  color: CcolorConstants.buttons_Color,
                  semanticContainer: true,
                  //implent InkResponse
                  child: InkResponse(
                    splashColor: Colors.blue.withAlpha(3000),
                    containedInkWell: true,
                    highlightShape: BoxShape.rectangle,
                    onTap: () {
                      Get.to(PhotoGallery7(title: 'מרום רווקים סיני'));
                    },
                    //Adding image & text
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/images/WeddingPhotoBack12.jpg',
                          width: 375, // Adjust the width as desired
                          height: 111, // Adjust the height as desired
                          fit: BoxFit.fitWidth,
                        ),
                        const Text(
                          'מרום רווקים סיני',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w300),
                          textAlign: TextAlign.end,
                          selectionColor: Colors.white,
                        ),
                        const SizedBox(height: 2)
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 360,
              height: 140,
              child: GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) =>
                  //         PhotoGallery8(title: 'Photo Gallery'),
                  //   ),
                  // );
                },
                child: Card(
                  shape: const RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(150)),
                  ),
                  clipBehavior: Clip.antiAlias,
                  elevation: 20,
                  color: CcolorConstants.buttons_Color,
                  semanticContainer: true,
                  //implent InkResponse
                  child: InkResponse(
                    splashColor: Colors.blue.withAlpha(3000),
                    containedInkWell: true,
                    highlightShape: BoxShape.rectangle,
                    onTap: () {
                      Get.to(PhotoGallery8(title: 'Last Seen'));
                    },
                    //Adding image & text
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/images/no-image.png',
                          width: 375, // Adjust the width as desired
                          height: 111, // Adjust the height as desired
                          fit: BoxFit.fitWidth,
                        ),
                        const Text(
                          'Last Seen',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w300),
                          textAlign: TextAlign.end,
                          selectionColor: Colors.white,
                        ),
                        const SizedBox(height: 2)
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: ElevatedButton.icon(
                onPressed: () {
                  Get.to(HomePage());
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: CcolorConstants.buttons_Color),
                icon: const Icon(Icons.arrow_back_ios_new_sharp),
                label:
                    const Text('ראשי', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
