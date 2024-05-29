
import 'package:get_it/get_it.dart';
import 'package:ngdemo24/data/repositories/random_users_repository_impl.dart';

final getIt = GetIt.I;

Future<void> initDI() async{
  // Repository
  getIt.registerSingleton<RandomUsersRepositoryImpl>(RandomUsersRepositoryImpl());

  // Cubits

  // Blocs

  // Controllers
}