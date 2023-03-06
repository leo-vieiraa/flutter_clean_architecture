import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/features/album/domain/repositories/album_repository.dart';
import 'package:flutter_clean_architecture/features/album/domain/entities/album.dart'
    as entitie;
import 'package:flutter_clean_architecture/core/error/failure.dart';

class GetAlbums {
  final AlbumRepository repository;
  GetAlbums({required this.repository});

  Future<Either<Failure, List<entitie.Album>>> call() async {
    return await repository.getAlbums();
  }
}
