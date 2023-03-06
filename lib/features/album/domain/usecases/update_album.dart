import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/features/album/domain/repositories/album_repository.dart';
import 'package:flutter_clean_architecture/features/album/domain/entities/album.dart'
    as entitie;
import 'package:flutter_clean_architecture/core/error/failure.dart';

class UpdateAlbum {
  final AlbumRepository repository;
  UpdateAlbum({required this.repository});

  Future<Either<Failure, entitie.Album>> call(entitie.Album album) async {
    return await repository.updateAlbum(album);
  }
}
