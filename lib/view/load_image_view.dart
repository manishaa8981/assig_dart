import 'package:flutter/material.dart';

class LoadImageView extends StatelessWidget {
  const LoadImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Load Image View"),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: SafeArea(
            child: SizedBox(
          height: MediaQuery.of(context).size.height * .9,
          width: MediaQuery.of(context).size.height * .9,
          child: Center(child: Image.asset('assets/images/dog-1.jpeg')),
        )
            ));
  }
}






// yo xai 3 ta image upload garna mathe xai aru aru try gareko 



// import 'package:flutter/material.dart';
// class LoadImageView extends StatelessWidget {
//   const LoadImageView({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Load Image View"),
//           centerTitle: true,
//           backgroundColor: Colors.amber,
//         ),
//         body: SafeArea(
//             child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Center(child: Image.asset('assets/images/dog-1.jpeg')),
//               Center(child: Image.asset('assets/images/dog-2.jpeg')),
//               Center(child: Image.asset('assets/images/dog-3.jpeg')),
//             ],
//           ),
//         )));
//   }
// }