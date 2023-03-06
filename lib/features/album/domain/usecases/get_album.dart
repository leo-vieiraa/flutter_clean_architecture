import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/features/album/domain/repositories/album_repository.dart';
import 'package:flutter_clean_architecture/features/album/domain/entities/album.dart'
    as entitie;
import 'package:flutter_clean_architecture/core/error/failure.dart';

class GetAlbum {
  final AlbumRepository repository;
  GetAlbum({required this.repository});

  Future<Either<Failure, entitie.Album>> call(int id) async {
    return await repository.getAlbum(id);
  }
}
