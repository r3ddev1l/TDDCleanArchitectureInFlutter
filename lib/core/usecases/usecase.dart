import 'package:clean_architecture/core/error/failure.dart';
import 'package:dartz/dartz.dart';

// parama to access the parameters passed to the Base UseCase class
abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}
