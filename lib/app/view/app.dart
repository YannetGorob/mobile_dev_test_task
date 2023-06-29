import 'package:flutter/material.dart';
import 'package:mobile_dev_test_task/features/authorization/presentation/authorization_page.dart';
import 'package:mobile_dev_test_task/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const AuthorizationPage(),
    );
  }
}
