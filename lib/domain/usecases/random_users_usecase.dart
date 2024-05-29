import 'package:ngdemo24/data/repositories/random_users_repository_impl.dart';
import 'package:ngdemo24/di/get_it.dart';
import 'package:ngdemo24/domain/repositories/random_user_repository.dart';

import '../entities/random_users_entity.dart';

class RandomUsersUseCase {
  final RandomUsersRepository repository = getIt<RandomUsersRepositoryImpl>();

  Future<List<RandomUserEntity>> call(int currentPage) async {
    return await repository.loadRandomUserList(currentPage);
  }
}
