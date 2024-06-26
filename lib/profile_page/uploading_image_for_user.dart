import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class FirebaseApiForUserImage {
  final FirebaseStorage _storage = FirebaseStorage.instance;
  User? user = FirebaseAuth.instance.currentUser;
  Future<String?> uploadingImageOnFirebase(
      File? uploadedImage, BuildContext context) async {
    if (user == null || uploadedImage == null) {
      return null;
    }

    try {
      final storageRef = _storage
          .ref()
          .child('users')
          .child(user!.uid)
          .child('profile_photos')
          .child('${user!.uid}.png');

      try {
        await storageRef.delete();
      } catch (e) {
        // If the image doesn't exist, continue without throwing an error
      }

      // Upload the new image
      await storageRef.putFile(uploadedImage);

      final imageUrl = await storageRef.getDownloadURL();

      return imageUrl;
    } on FirebaseException catch (e) {
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.toString()),
          action: SnackBarAction(
              label: 'Close',
              onPressed: () {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
              }),
        ),
      );
      return null;
    }
  }
}
