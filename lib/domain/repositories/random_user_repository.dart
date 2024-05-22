import 'package:ngdemo24/domain/entities/random_users_entity.dart';

abstract class RandomUsersRepository {
  Future<List<RandomUserEntity>> loadRandomUserList(int currentPage) async {
    return [];
  }
}
