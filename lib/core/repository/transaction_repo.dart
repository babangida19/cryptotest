import 'package:crypto_test/model/btc_hash_model.dart';
import 'package:crypto_test/model/btc_transaction.dart';
import 'package:crypto_test/model/tezos_transaction.dart';
import 'package:crypto_test/core/services/networking_service/network_service.dart';
import 'package:crypto_test/core/services/networking_service/api_routes.dart';

abstract class TransactionRepo {
  Future<BtcTransactionModel> getBtcTransaction({required String hashId});
  Future<BtcHashModel> getBtcHashModel();
  Future<List<TezosTransaction>> getTezosTransaction();
}

class TransactionRepoImpl extends TransactionRepo {
  final NetworkService networkService;

  TransactionRepoImpl({required this.networkService});

  @override
  Future<BtcHashModel> getBtcHashModel() async {
    final response = await networkService.getData(url: ApiRoutes.getBtcBloc);
    return BtcHashModel.fromJson(response);
  }

  @override
  Future<BtcTransactionModel> getBtcTransaction(
      {required String hashId}) async {
    final response = await networkService.getData(
        url: ApiRoutes.getBtcTransactionById(hashId));
    return BtcTransactionModel.fromJson(response);
  }

  @override
  Future<List<TezosTransaction>> getTezosTransaction() async {
    final response = await networkService.getData(url: ApiRoutes.gettzktBloc);
    return List.from(response.map((e) => (TezosTransaction.fromJson(e))));
  }
}
