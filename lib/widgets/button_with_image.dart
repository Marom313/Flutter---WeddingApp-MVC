import 'package:flutter/material.dart';
import 'package:wedding_final_mvc/Constants/colors_constants.dart';

Widget buildCard(String data, String path) => Container(
      color: CcolorConstants.transparent,
      width: 170,
      height: 75,
      child: SizedBox(
        child: Card(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(15),
              image:
                  DecorationImage(image: AssetImage(path), fit: BoxFit.cover),
            ),
            child: Center(
              child: Text(
                data,
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  backgroundColor: CcolorConstants.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: CcolorConstants.primary_text_color,
                ),
              ),
            ),
          ),
        ),
      ),
    );


// Widget buildCard(int title) => Container(
//       color: Colors.amber.shade200,
//       width: 150,
//       height: 75,
//       child: SizedBox(
//         child: Card(
//           color: CcolorConstants.background_color,
//           child: SizedBox(
//             child: Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15),
//                 image: DecorationImage(
//                     image: AssetImage('assets/images/WeddingPhotoBack6.jpg'),
//                     fit: BoxFit.cover),
//               ),
//               child: Card(
//                 color: CcolorConstants.transparent,
//                 child: Text('Hachatuna!'),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
