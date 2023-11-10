// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:lottie/lottie.dart';

// import '../../config/constants.dart';
// import '../../utils/log_utils.dart';
// import 'indicator.dart';

// class UXPreloadLottieAsset extends StatefulWidget {
//   const UXPreloadLottieAsset({
//     Key? key,
//     required this.lottiePath,
//     this.package,
//   }) : super(key: key);

//   final String lottiePath;
//   final String? package;

//   @override
//   State<UXPreloadLottieAsset> createState() => _UXPreloadLottieAssetState();
// }

// class _UXPreloadLottieAssetState extends State<UXPreloadLottieAsset>
//     with TickerProviderStateMixin {
//   late final Future<LottieComposition> _composition;

//   @override
//   void initState() {
//     super.initState();

//     _composition = _loadComposition();
//   }

//   Future<LottieComposition> _loadComposition() async {
//     late ByteData assetData;
//     if (isNullOrEmpty(widget.package)) {
//       assetData = await rootBundle.load(widget.lottiePath);
//     } else {
//       assetData = await rootBundle
//           .load("packages/${widget.package}/${widget.lottiePath}");
//     }
//     return await LottieComposition.fromByteData(assetData);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<LottieComposition>(
//       future: _composition,
//       builder: (context, snapshot) {
//         var composition = snapshot.data;
//         if (composition != null) {
//           return Lottie(composition: composition);
//         } else {
//           return const Center(
//             child: Padding(
//               padding: EdgeInsets.all(UXConstants.kPaddingL),
//               child: UXIndicator(),
//             ),
//           );
//         }
//       },
//     );
//   }
// }
