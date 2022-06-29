// TODO 2: Create a get_it locator

import 'package:get_it/get_it.dart';
import 'package:get_it_tutorial/domain/meme_controller.dart';
import 'package:get_it_tutorial/repository/meme_repo.dart';

final locator = GetIt.instance;

// TODO 3: Create a setup method and create our services
void setup() {
  locator.registerLazySingleton<MemeRepo>(() => MemeRepo());
  locator.registerLazySingleton<MemeDomainController>(() => MemeDomainController());

}

