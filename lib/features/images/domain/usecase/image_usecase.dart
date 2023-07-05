import 'package:my_cat_network/common/domain/usecase/usecase.dart';
import 'package:my_cat_network/core/errors/failures/failure.dart';
import 'package:fpdart/fpdart.dart';
abstract class ImageUseCase<T> extends UseCase {
  const ImageUseCase();
  Future<Either<Failure, T>> call();

}