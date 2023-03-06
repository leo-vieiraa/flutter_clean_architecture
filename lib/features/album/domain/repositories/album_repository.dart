import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/core/error/failure.dart';
import 'package:flutter_clean_architecture/features/album/domain/entities/album.dart';
import 'package:flutter_clean_architecture/features/album/domain/usecases/get_album.dart';

abstract class AlbumRepository {
  Future<Either<Failure, List<Album>>> getAlbums();
  Future<Either<Failure, Album>> getAlbum(int id);
  Future<Either<Failure, Album>> updateAlbum(Album album);
  Future<Either<Failure, Album>> deleteAlbum(int id);
  Future<Either<Failure, Album>> createAlbum(Album album);
}
