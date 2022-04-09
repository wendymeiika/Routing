import 'package:flutter/material.dart';

// class Galery extends StatelessWidget {
//   final List<String> foto = [
//     "asset/image/rj.jpeg",
//     "asset/image/jn.jpeg",
//     "asset/image/hc.jpeg",
//     "asset/image/jm.jpeg",
//     "asset/image/ch.jpeg",
//     "asset/image/js.jpeg",
//     "asset/image/mk.jpeg"
//   ];

//   final List<String> sub = [
//     'NCT Dream Renjun dikenal sebagai salah satu member NCT yang paling estetik',
//     'NCT Dream Jeno merupakan salah satu member NCT yang kehadirannya sudah dikenal sejak ia masih remaja.',
//     'NCT Dream Haechan diketahui sebagai salah satu idol yang memiliki otak yang cerdas dan kreatif',
//     'NCT Dream Jaemin Paras Jaemin yang menawan ini selalu bisa mencuri perhatian para NCTzen',
//     'NCT Dream Chonle dikenal sebagai Chenle, adalah seorang penyanyi, penulis lagu, penari dan pemeran Tiongkok yang berbasis di Seoul, Korea Selatan.',
//     'NCT Dream Jisung seorang penyanyi Korea Selatan yang berada di bawah naungan SM Entertainment.',
//     'NCT Dream Mark Mark Lee, lebih dikenal dengan nama Mark adalah rapper, dancer, dan penyanyi berkebangsaan Kanada'
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Galery"),
//       ),
//       body: GridView.builder(
//         scrollDirection: Axis.vertical,
//         shrinkWrap: true,
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           crossAxisSpacing: 10,
//           mainAxisSpacing: 30,
//         ),
//         itemCount: foto.length,
//         itemBuilder: (context, index) {
//           return Container(
//             child: ListTile(
//               title: ClipRRect(
//                   child: Image.asset(
//                 foto[index],
//                 height: 200,
//                 width: 200,
//                 fit: BoxFit.cover,
//               )),
//               subtitle: Text(sub[index], style: TextStyle(color: Colors.black)),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
