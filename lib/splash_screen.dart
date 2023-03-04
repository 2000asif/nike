// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:nb_utils/nb_utils.dart';
// import 'package:nike_project/widgets/home_screen.dart';
//
// import 'buttom_nav_controller.dart';
//
// class SplashScreen extends StatefulWidget {
//   const SplashScreen({Key? key}) : super(key: key);
//
//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//   Future<void> showScreen() async {
//     final prefs = await SharedPreferences.getInstance();
//     var token = prefs.getString('token') ?? "";
//     if (token.isEmptyOrNull) {
//       await Future.delayed(const Duration(seconds: 2))
//           .then((value) => const BottomNavController().launch(context));
//     } else {
//       Future.delayed(const Duration(seconds: 2))
//           .then((value) => const HomePage().launch(context));
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         height: MediaQuery.of(context).size.height / 1.8,
//         width: double.infinity,
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: const [Image(image: NetworkImage('')), Text('Oxy Boots')],
//         ),
//       ),
//     );
//   }
// }
