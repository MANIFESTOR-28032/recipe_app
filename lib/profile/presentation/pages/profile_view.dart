// import 'package:flutter/material.dart';
// import 'package:uyishi217/profile/presentation/pages/profile_view_model.dart';
//
// class ProfilImage extends StatelessWidget {
//   const ProfilImage({super.key, required this.vm});
//
//   final CategoriesViewModel vm;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListenableBuilder(
//         listenable: vm,
//         builder: (context, index) => GridView.builder(
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             mainAxisExtent: 200,
//             crossAxisSpacing: 20,
//             mainAxisSpacing: 31,
//           ),
//           itemBuilder: (BuildContext context, int index) {
//             Image.network(vm.categories[index].photo);
//           },
//           itemCount: vm.categories.length,
//         ),
//       ),
//     );
//   }
// }
