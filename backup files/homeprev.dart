// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_first_app/models/catalogs.dart';
// import '../lib/widgets/items.dart';
// import 'dart:convert';
// // import './settings.dart';

// class Home extends StatefulWidget {
//   const Home({super.key});

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   void initState() {
//     super.initState();
//     loadData();
//   }

//   loadData() async {
//     await Future.delayed(const Duration(seconds: 2));
//     var catalogData = await rootBundle.loadString("assets/files/catalog.json");
//     var decodedData = jsonDecode(catalogData);
//     var productsData = decodedData["products"];
//     // print(productsData);

//     CatalogModel.products = List.from(productsData)
//         .map<Item>((item) => Item.fromMap(item))
//         .toList();

//     setState(() {});
//     // dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     // ignore: unnecessary_null_comparison
//     // return (CatalogModel.products != null && CatalogModel.products!.isNotEmpty)
//     //     ? ListView.builder(
//     //         padding: const EdgeInsets.all(16.0),
//     //         itemCount: CatalogModel.products!.length,
//     //         itemBuilder: (context, index) => ItemWidget(
//     //           item: CatalogModel.products![index],
//     //         ),
//     //       )
//     //     : const Center(
//     //         child: CircularProgressIndicator(),
//     //       );
//     return (CatalogModel.products != null && CatalogModel.products!.isNotEmpty)
//         ? GridView.builder(
//             itemCount: CatalogModel.products!.length,
//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               mainAxisSpacing: 18,
//               crossAxisSpacing: 16,
//             ),
//             itemBuilder: (context, index) {
//               final item = CatalogModel.products![index];
//               return ItemWidget(item: item);
//             },
//           )
//         : const Center(
//             child: CircularProgressIndicator(),
//           );
//   }
// }
