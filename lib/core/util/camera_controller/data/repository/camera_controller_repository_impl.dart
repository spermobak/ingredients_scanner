import 'package:camera/camera.dart';
import 'package:dartz/dartz.dart';

import 'package:ingredients_scanner/core/util/camera_controller/data/datasource/camera_controller_data_source.dart';

import '../../../../error/failures.dart';
import '../../domain/repository/camera_controller_repository.dart';

class CameraControllerRepositoryImpl implements CameraControllerRepository {
  CameraControllerRepositoryImpl({required this.dataSource});
  final CameraControllerDataSource dataSource;

  @override
  Future<Either<Failure, CameraController>> initCameraController() async {
    try {
      return Right(await dataSource.initCameraController());
    } on CameraException {
      return Left(CameraFailure());
    }
  }

  @override
  Future<Either<Failure, XFile>> takePictureFromCamera() async {
    try {
      return Right(await dataSource.takePictureFromCamera());
    } on CameraException {
      return Left(CameraFailure());
    }
  }
}
