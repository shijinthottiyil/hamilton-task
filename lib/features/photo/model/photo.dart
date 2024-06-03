import 'package:get/get.dart';
import 'package:hamilton/features/photo/model/photo_model.dart';

class Photo {
  // private constructor.
  Photo._();

  // singleton instance.
  static final _instance = Photo._();

  // getter for singleton instance.
  factory Photo() => _instance;

  // VARIABLE: PhotoModel.
  var photoModel = PhotoModel().obs;
}
