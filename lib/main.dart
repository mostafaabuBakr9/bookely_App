import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/features/home/presentation/manager/best_seller_books/best_seller_books_cubit.dart';
import 'package:bookly/features/home/presentation/manager/feature_books/feature_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeatureBooksCubit(getIt<HomeRepoImpl>()),
        ),
        BlocProvider(
          create: (context) => BestSellerBooksCubit(getIt<HomeRepoImpl>()),
        )
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Constant.PRIMARY_COLOR,
        ),
        routerConfig: AppRouter.router,
      ),
    );
  }
}
