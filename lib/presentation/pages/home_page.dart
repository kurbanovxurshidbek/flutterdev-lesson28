import 'package:flutter/material.dart';
import 'package:ngdemo24/data/repositories/random_users_repository_impl.dart';
import 'package:ngdemo24/domain/usecases/random_users_usecase.dart';

import '../../domain/entities/random_users_entity.dart';
import '../widgets/item_random_user.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  RandomUsersUseCase randomUsersUseCase = RandomUsersUseCase();

  ScrollController scrollController = ScrollController();
  bool isLoading = true;
  List<RandomUserEntity> userList = [];
  int currentPage = 1;

  loadRandomUserList() async{
    var randomUsers = await randomUsersUseCase.call(currentPage);
    setState(() {
      userList.addAll(randomUsers);
      currentPage++;
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    loadRandomUserList();

    scrollController.addListener(() {
      if (scrollController.position.maxScrollExtent <= scrollController.offset) {
        loadRandomUserList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Clean Architecture"),
      ),
      body: Stack(
        children: [
          ListView.builder(
            controller: scrollController,
            itemCount: userList.length,
            itemBuilder: (ctx, index) {
              return itemOfRandomUser(userList[index], index);
            },
          ),

          isLoading
              ? const Center(
            child: CircularProgressIndicator(),
          )
              : const SizedBox.shrink(),
        ],
      )
    );
  }
}
