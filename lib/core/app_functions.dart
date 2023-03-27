import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'data/either.dart';

abstract class AppFunctions {
  static String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }

  static Future<void> writeToFile(ByteData data, String path) async {
    final buffer = data.buffer;
    await File(path).writeAsBytes(
      buffer.asUint8List(data.offsetInBytes, data.lengthInBytes),
    );
  }

  static void showSnackbar(BuildContext context, String text) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(text),
      duration: const Duration(seconds: 2),
    ));
  }

  static bool isImage(String path) {
    if (path.endsWith('.jpg') ||
        path.endsWith('.png') ||
        path.endsWith('.giff') ||
        path.endsWith('.jpeg') ||
        path.endsWith('.svg')) {
      return true;
    }
    return false;
  }

  // static Dio getChatDio() {
  //   final dioSettings = DioSettings();
  //   dioSettings.setBaseOptions(baseUrl: AppConstants.chatBaseUrl);

  //   return dioSettings.dio
  //     ..interceptors.add(
  //       DioInterceptor(
  //         requestRetrier:
  //             DioConnectivityRequestRetrier(connectivity: Connectivity()),
  //       ),
  //     );
  // }

  static Future<Either<String, String>> pickImage() async {
    try {
      final ImagePicker picker = ImagePicker();
      final PickedFile? image =
          (await picker.pickImage(source: ImageSource.gallery)) as PickedFile?;
      return Right(image!.path);

      // if (image != null) {
      //   final croppedFile = await ImageCropper().cropImage(
      //     sourcePath: image.path,
      //     aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
      //     aspectRatioPresets: [
      //       CropAspectRatioPreset.square,
      //       //   CropAspectRatioPreset.ratio3x2,
      //       //   CropAspectRatioPreset.original,
      //       //   CropAspectRatioPreset.ratio4x3,
      //       //   CropAspectRatioPreset.ratio16x9
      //     ],
      //     androidUiSettings: const AndroidUiSettings(
      //       toolbarTitle: 'Crop Image',
      //       // toolbarWidgetColor: Colors.white,
      //       initAspectRatio: CropAspectRatioPreset.square,
      //       lockAspectRatio: true,
      //     ),
      //     iosUiSettings: const IOSUiSettings(title: 'Crop Image'),
      //   );

      //   if (croppedFile != null) {
      //     return Right(File(croppedFile.path));
      //   } else {
      //     return Right(File(image.path));
      //   }
      // } else {
      //   return Left('No image is selected');
      // }

    } catch (_) {
      return Left('Something went wrong');
    }
  }

  static String removeHtmlTags(String data) {
    RegExp exp = RegExp(r"<[^>]*>", multiLine: true, caseSensitive: true);

    return data.replaceAll(exp, '');
  }

  static String getTimeAgoDay(String date) {
    final DateTime thatTime = DateTime.parse(date);
    final DateTime now = DateTime.now();
    final difference = now.difference(thatTime).inDays;
    if (difference == 0) {
      return 'Today';
    } else if (difference == 1) {
      return 'Yesterday';
    } else if (difference <= 6) {
      return '$difference Days ago';
    } else if (difference <= 13) {
      return 'Week ago';
    } else if (difference <= 27) {
      return '${difference ~/ 7} Weeks ago';
    } else if (difference <= 60) {
      return 'Month ago';
    } else if (difference <= 359) {
      return '${difference ~/ 30} Months ago';
    } else if (difference <= 729) {
      return 'Year ago';
    } else {
      return '${difference ~/ 365} Years ago';
    }
  }

  static String getTimeAgoSec(String date) {
    final DateTime thatTime = DateTime.parse(date);
    final DateTime now = DateTime.now();
    final difference = now.difference(thatTime).inSeconds;
    if (difference <= 59) {
      return '$difference seconds ago';
    } else if (difference <= 119) {
      return 'a minute ago';
    } else if (difference <= 3599) {
      return '${difference ~/ 60} minutes ago';
    } else if (difference <= 7199) {
      return 'an hour ago';
    } else if (difference <= 86400 - 1) {
      return '${difference ~/ 3600} hours ago';
    } else if (difference <= 172800 - 1) {
      return 'a day ago';
    } else {
      return '${difference ~/ 86400} days ago';
    }
  }

  static String getHourAndMin(String date) {
    final time = DateTime.parse(date);
    final hour = time.hour;
    final minute =
        time.minute < 10 ? '0${time.minute}' : time.minute.toString();
    return '$hour:$minute';
  }
}
