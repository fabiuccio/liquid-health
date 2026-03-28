import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'core/constants/api_keys.dart';
import 'core/constants/app_strings.dart';
import 'core/router/app_router.dart';
import 'core/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (ApiKeys.hasAllKeys) {
    await Supabase.initialize(
      url: ApiKeys.supabaseUrl,
      anonKey: ApiKeys.supabaseAnonKey,
    );
  }
  runApp(const ProviderScope(child: LiquidHealthApp()));
}

class LiquidHealthApp extends ConsumerWidget {
  const LiquidHealthApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final GoRouter router = ref.watch(goRouterProvider);
    return MaterialApp.router(
      title: AppStrings.appTitle,
      debugShowCheckedModeBanner: false,
      theme: buildAppTheme(),
      routerConfig: router,
    );
  }
}
