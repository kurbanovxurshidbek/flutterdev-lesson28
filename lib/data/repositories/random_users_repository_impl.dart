import 'package:ngdemo24/domain/repositories/random_user_repository.dart';

import '../../domain/entities/random_users_entity.dart';
import '../datasources/remote/http_service.dart';

class RandomUsersRepositoryImpl extends RandomUsersRepository {

  @override
  Future<List<RandomUserEntity>> loadRandomUserList(int currentPage) async {
    var response = await Network.GET(Network.API_RANDOM_USER_LIST, Network.paramsRandomUserList(currentPage));
    var randomUserListRes = Network.parseRandomUsers(response!);
    return randomUserListRes.results;
  }
}
