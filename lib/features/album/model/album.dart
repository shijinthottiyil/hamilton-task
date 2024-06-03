import 'package:get/get.dart';
import 'package:hamilton/features/album/model/album_model.dart';

class Album {
  // private constructor.
  Album._();

  // singleton instance.
  static final _instance = Album._();

  // getter for singleton instance.
  factory Album() => _instance;

  // VARIABLE: AlbumModel
  var albumModel = AlbumModel().obs;
}
