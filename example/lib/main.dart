import 'package:http/http.dart' as http;
import 'package:investec_open_api/investec_open_api.dart';

void main() async {
  final httpClient = http.Client();

  final api = InvestecOpenAPI(
    clientId: 'API KEY',
    secret: 'SECRET',
    httpClient: httpClient,
  );

  final accounts = await api.getAccounts();

  // This would be all the available accounts.
  print(accounts.data.accounts); // List<AccountModel>

  final accountBalance = await api.getAccountBalance('ACCOUNT_NUMBER');
  print(accountBalance.data); // AccountBalanceModel
}
