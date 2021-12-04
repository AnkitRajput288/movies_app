
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'account_provider.dart';

final accountProvider = ChangeNotifierProvider<AccountProvider>((ref) {
  return AccountProvider();
});

