import 'package:fpdart/src/either.dart';
import 'package:my_cat_network/common/domain/usecase/usecase.dart';
import 'package:my_cat_network/core/errors/failures/failure.dart';
import 'package:my_cat_network/features/images/domain/entity/image/image_model.dart';
import 'package:my_cat_network/features/images/domain/repository/image_repository.dart';
import 'package:my_cat_network/features/images/domain/usecase/image_usecase.dart';

class GetAllImageUseCase extends ImageUseCase<FullImage> {
  final ImageRepository repository;

  const GetAllImageUseCase({required this.repository});

  @override
  Future<Either<Failure, FullImage>> call() {

  }


}