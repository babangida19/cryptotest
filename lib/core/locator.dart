import 'package:crypto_test/core/repository/transaction_repo.dart';
import 'package:crypto_test/core/services/networking_service/network_service.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;
Future<void> locatorSetUp() async {
  serviceLocator
      .registerLazySingleton<NetworkService>(() => NetworkClientImpl());
  serviceLocator.registerLazySingleton<TransactionRepo>(() =>
      TransactionRepoImpl(networkService: serviceLocator<NetworkService>()));
}
