import 'package:crypto_test/core/repository/transaction_repo.dart';
import 'package:crypto_test/core/services/networking_service/api_routes.dart';
import 'package:crypto_test/core/services/networking_service/network_service.dart';
import 'package:crypto_test/model/btc_hash_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'transaction_repo_test.mocks.dart';

@GenerateNiceMocks([MockSpec<NetworkService>(), MockSpec<DioException>()])
void main() {
  final MockNetworkService mockNetworkService = MockNetworkService();
  final TransactionRepo transactionRepo =
      TransactionRepoImpl(networkService: mockNetworkService);

  var mockResponse = {
    "hash": "000000000000000000009c9327c146f54a07c9ef82d95727111ad313c8c6c3c2",
    "time": 1732828263,
    "block_index": 872383,
    "height": 872383,
  };
  group("Test TransactionRepo", () {
    test(
        "Given TransactionRepo check if getBtcHashModel() returns data on success",
        () async {
      when(mockNetworkService.getData(url: ApiRoutes.getBtcBloc))
          .thenAnswer((_) => Future.value(mockResponse));

      var value = await transactionRepo.getBtcHashModel();

      expect(value, isA<BtcHashModel>());
    });

    test(
        "Given TransactionRepo check if getBtcHashModel() throws an Error on error",
        () async {
      when(mockNetworkService.getData(url: ApiRoutes.getBtcBloc))
          .thenAnswer((_) => throw MockDioException());
      await expectLater(transactionRepo.getBtcHashModel(), throwsException);
    });
  });
}
