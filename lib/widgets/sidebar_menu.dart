import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wedding_final_mvc/ui/colors_constants.dart';
import 'package:wedding_final_mvc/views/phots_page.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CcolorConstants.app_bar_color,
      child: Align(
        alignment: Alignment.centerRight,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/WeddingPhotoBack3.jpg'),
                ),
              ),
              child: Text(
                'Side menu',
                style: TextStyle(color: Color(0xffffee93)),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('ראשי', style: TextStyle(color: Colors.white)),
              onTap: () => {Get.back()},
            ),
            ListTile(
              leading: const Icon(Icons.photo),
              title:
                  const Text('תמונות', style: TextStyle(color: Colors.white)),
              onTap: () => {
                Get.to(PhotosPage())
              },
            ),
            ListTile(
              leading: const Icon(Icons.video_camera_back),
              title: const Text('וידאו', style: TextStyle(color: Colors.white)),
              onTap: () => {
                // Navigator.push(context,
                // MaterialPageRoute(builder: (context) => const VideosPage()))
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit_document),
              title:
                  const Text('מסמכים', style: TextStyle(color: Colors.white)),
              onTap: () => {
                // Navigator.push(
                // context,
                // MaterialPageRoute(
                // builder: (context) => const DocumentsPage()))
              },
            ),
            ListTile(
              leading: const Icon(Icons.favorite),
              title:
                  const Text('מועדפים', style: TextStyle(color: Colors.white)),
              onTap: () => {
                // Navigator.push(
                // context,
                // MaterialPageRoute(
                // builder: (context) => const FavoritesPage()))
              },
            ),
          ],
        ),
      ),
    );
  }
}
