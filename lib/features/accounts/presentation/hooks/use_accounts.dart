import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../data/datasources/account_mock_datasource.dart';
import '../../domain/entities/account.dart';

/// Hook for fetching accounts
AsyncSnapshot<List<Account>> useAccounts() {
  final dataSource = useMemoized(() => AccountMockDataSource());

  return useFuture(
    useMemoized(() => dataSource.fetchAccounts(), []),
  );
}

/// Hook for fetching single account
AsyncSnapshot<Account> useAccount(String id) {
  final dataSource = useMemoized(() => AccountMockDataSource());

  return useFuture(
    useMemoized(() => dataSource.fetchAccount(id), [id]),
  );
}
