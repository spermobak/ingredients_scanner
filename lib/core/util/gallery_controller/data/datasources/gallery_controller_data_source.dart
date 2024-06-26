import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:gallery_picker/gallery_picker.dart';

import '../../../../error/exceptions.dart';

abstract class GalleryControllerDataSource {
  Future<File> getFromGallery(BuildContext context);
  Future<Unit> disposeGallery();
}

class GalleryControllerDataSourceImpl implements GalleryControllerDataSource {
  @override
  Future<File> getFromGallery(BuildContext context) async {
    List<MediaFile>? media =
        await GalleryPicker.pickMedia(context: context, singleMedia: true);
    if (media != null && media.isNotEmpty) {
      return await media.first.getFile();
    } else {
      throw NoSuchFileException();
    }
  }

  @override
  Future<Unit> disposeGallery() {
    GalleryPicker.dispose();
    return Future.value(unit);
  }
}
