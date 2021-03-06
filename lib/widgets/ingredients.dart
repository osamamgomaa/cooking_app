import '../AppAssets.dart';
import '../AppColors.dart';
import 'package:flutter/material.dart';

class Ingredients extends StatelessWidget {
  const Ingredients({Key? key}) : super(key: key);

  static List images = [
    AppAssets.broccoliIcon,
    AppAssets.salmonIcon,
    AppAssets.riceIcon,
    AppAssets.onionIcon,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.0,
      width: 100.0,
      child: ListView.builder(
          itemCount: images.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int itemIndex) {
            return Align(
              widthFactor: 0.6,
              child: CircleAvatar(
                                    backgroundColor: AppColors.colorCard,

                child: Container(
                        height: 25.0,
              
                  child: CircleAvatar(
                    backgroundColor: AppColors.colorWhite,
                    child: Container(
                      height: 20.0,
                      width: 20.0,
                      decoration: BoxDecoration(
                          color: AppColors.colorWhite, shape: BoxShape.circle),
                      child: Image.asset(
                        images[itemIndex],
                        height: 20.0,
                        width: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}

// class Ingredients extends StatelessWidget {
//   const Ingredients({Key? key}) : super(key: key);

//   static List<String> images = [
//     AppAssets.broccoliIcon,
//     AppAssets.riceIcon,
//     AppAssets.salmonIcon,
//     AppAssets.onionIcon,
//   ];

//   @override
//   Widget build(BuildContext context) {
//     List<Widget> list = [];
//     for (var i = 0; i < images.length; i++) {
//       list.add(Positioned(
//         top: 500.0,
//         left: i * 28.toDouble(),
//         height: 28.0,
//         width: 28.0,
//         child: Container(
//           decoration: BoxDecoration(
//             color: AppColors.colorWhite,
//             shape: BoxShape.circle,
//             image: DecorationImage(
//                 image: AssetImage(images[i]), fit: BoxFit.cover),
//           ),
//         ),
//       ));
//     }
//     return Stack(children: list);
//   }
// }

// Container(
//               height: 20.0,
//               width: 20.0,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(50.0),
//                   image: DecorationImage(
//                       image: AssetImage(images[itemIndex]),
//                       fit: BoxFit.cover)),
// )