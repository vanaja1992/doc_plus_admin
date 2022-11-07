import 'package:doc_plus_admin/src/core/constants/app_string.dart';
import 'package:doc_plus_admin/src/features/authentication/cubit/authentication_cubit.dart';
import 'package:doc_plus_admin/src/features/authentication/cubit/authentication_repository.dart';
import 'package:doc_plus_admin/src/features/authentication/ui/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthenticationCubit(AuthenticationRepository()),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: AppStrings().appName,
          home: const SplashPage()),
    );
  }
}
