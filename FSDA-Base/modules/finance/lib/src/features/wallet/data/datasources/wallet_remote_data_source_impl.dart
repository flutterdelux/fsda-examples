import 'package:app_core/app_core.dart';

import '../../../../shared/data/errors/finance_exception.dart';
import '../requests/wallet_delete_request.dart';
import 'wallet_remote_data_source.dart';

class WalletRemoteDataSourceImpl implements WalletRemoteDataSource {
  final ApiClient _apiClient;

  const WalletRemoteDataSourceImpl({required ApiClient apiClient})
    : _apiClient = apiClient;

  // ------- Retrieval -------

  // ------- Mutation -------

  @override
  Future<void> deleteWallet(WalletDeleteRequest request) async {
    final response = await _apiClient.delete<Map>('/wallets/${request.id}');
    if (response.statusCode == 200) return;
    throw FinanceException.fromApiResponse(response);
  }
}
