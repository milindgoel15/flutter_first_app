// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'dart:ui';

// import 'package:flutter/material.dart';
// import 'package:velocity_x/velocity_x.dart';

// import 'package:flutter_first_app/models/catalogs.dart';
// import 'package:flutter_first_app/widgets/themes.dart';

// class ItemWidget extends StatelessWidget {
//   final Item item;

//   // ignore: unnecessary_null_comparison
//   const ItemWidget({super.key, required this.item});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 1.0,
//       margin: EdgeInsets.symmetric(vertical: 10.0),
//       child: ListTile(
//         minVerticalPadding: 14,
//         onTap: () {
//           print("${item.name} pressed");
//         },
//         leading: Image.network(item.imageUrl),
//         title: Text(item.name),
//         subtitle: Text(item.desc),
//         trailing: Text(
//           "\$${item.price.toString()}",
//           textScaleFactor: 1.4,
//           style: const TextStyle(
//             color: Colors.deepPurple,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//     //     Card(
//     //   clipBehavior: Clip.antiAlias,
//     //   shape: RoundedRectangleBorder(
//     //     borderRadius: BorderRadius.circular(10),
//     //   ),
//     //   margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
//     //   child: GridTile(
//     //     header: Container(
//     //       padding: const EdgeInsets.all(2),
//     //       decoration: const BoxDecoration(
//     //         color: Colors.deepPurple,
//     //       ),
//     //       child: Text(
//     //         item.name,
//     //         style: const TextStyle(
//     //           color: Colors.white,
//     //         ),
//     //       ),
//     //     ),
//     //     footer: Container(
//     //       padding: const EdgeInsets.all(8),
//     //       decoration: const BoxDecoration(color: Colors.black),
//     //       child: Text(
//     //         item.price.toString(),
//     //         style: const TextStyle(
//     //           color: Colors.white,
//     //         ),
//     //       ),
//     //     ),
//     //     child: Image.network(
//     //       item.imageUrl,
//     //     ),
//     //   ),
//     // );
//   }
// }
