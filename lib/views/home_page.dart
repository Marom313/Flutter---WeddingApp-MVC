import 'package:flutter/material.dart';
// import 'package:get/get_navigation/src/routes/default_transitions.dart';
import 'package:wedding_final_mvc/ui/colors_constants.dart';
import 'package:wedding_final_mvc/widgets/button_with_image.dart';

import '../widgets/sidebar_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Wedding App'),
        backgroundColor: CcolorConstants.app_bar_color,
      ),
      drawer: const SideMenu(),
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  buildCard('החתונה', 'assets/images/WeddingPhotoBack6.jpg'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// child: buildCard(3),

                // child: Column(
                //   children: [
                //     SizedBox(
                //       width: 400,
                //       height: 400,
                //       child: Card(
                //         color: CcolorConstants.background_color,
                //         child: SizedBox(
                //           width: 300 * 0.5,
                //           height: 300 * 0.5,
                //           child: Container(
                //             decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(15),
                //               image: DecorationImage(
                //                   image: AssetImage(
                //                       'assets/images/WeddingPhotoBack6.jpg'),
                //                   fit: BoxFit.cover),
                //             ),
                //             child: Card(
                //               color: CcolorConstants.transparent,
                //               child: Text('Hachatuna!'),
                //             ),
                //           ),
                //         ),
                //       ),
                //     ),
                //   ],
                // ),

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text('Wedding App'),
//         backgroundColor: CcolorConstants.app_bar_color,
//       ),
//       drawer: const SideMenu(),
//       body: SizedBox(
//         width: double.maxFinite,
//         height: double.maxFinite,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Opacity(
//               opacity: 0.4,
//               child: Container(
//                 height: 500,
//                 width: double.infinity,
//                 decoration: 
//                 const BoxDecoration(
//                   image: DecorationImage(
//                       image: AssetImage('assets/images/WeddingPhotoBack4.jpg'),
//                       fit: BoxFit.cover),
//                 ),
//                 child: Column(
//                   children: [buildCard(16)],
//                 ),
//               ),
//             ),
//             // buildCard(3),
//           ],
//         ),
//       ),
//     );
//   }
// }
