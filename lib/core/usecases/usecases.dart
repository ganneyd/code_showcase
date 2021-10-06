import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../error/failures.dart';

///Contract for the usecase
///must return a [Either], [Left] or [Right]
///implmentations must provide their [Params] or if none required use the [NoParams]
///class
abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

///If a usecase does not need any params use this
class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}
