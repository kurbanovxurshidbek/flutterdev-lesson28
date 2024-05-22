import 'package:ngdemo24/domain/repositories/random_user_repository.dart';

import '../entities/random_users_entity.dart';

class RandomUsersUseCase {
  final RandomUsersRepository repository;

  RandomUsersUseCase(this.repository);

  Future<List<RandomUserEntity>> call(int currentPage) async {
    return await repository.loadRandomUserList(currentPage);
  }
}
