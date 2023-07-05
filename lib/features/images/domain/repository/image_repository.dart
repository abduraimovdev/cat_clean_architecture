import 'package:fpdart/fpdart.dart';
import 'package:my_cat_network/core/errors/failures/failure.dart';
abstract class ImageRepository {
  Future<Either<Failure, Map<String, dynamic>>> getAllImage();
}