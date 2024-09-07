import 'package:dalel/core/serveces/service_locator.dart';
import 'package:dalel/featuers/auth/presentation/auth_cubit/auth_cubit.dart';
import 'package:dalel/featuers/auth/presentation/views/signIn_view.dart';
import 'package:dalel/featuers/auth/presentation/views/signUp_view.dart';
import 'package:dalel/featuers/home/data/models/historical_period_model.dart';
import 'package:dalel/featuers/home/data/models/souvenirs_model.dart';
import 'package:dalel/featuers/onbording/presentation/views/onBording.dart';
import 'package:dalel/featuers/onbording/presentation/views/splach_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'featuers/auth/presentation/views/forget_password_view.dart';
import 'featuers/home/data/models/characters_model.dart';
import 'featuers/home/presentation/views/character_details_view.dart';
import 'featuers/home/presentation/views/historical_Perioud_details_view.dart';
import 'featuers/home/presentation/views/home_view.dart';
import 'featuers/home/presentation/views/souvenirs_details_view.dart';
import 'featuers/home/presentation/widgets/home_nav_bar.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => const SplashScreen(),
  ),
  GoRoute(
    path: "/onBoarding",
    builder: (context, state) => const OnBoardingScreen(),
  ),
  GoRoute(
    path: "/signUp",
    builder: (context, state) =>
        BlocProvider(create: (context) => AuthCubit(), child: SignUpView()),
  ),
  GoRoute(
    path: "/login",
    builder: (context, state) =>
        BlocProvider(create: (context) => AuthCubit(), child: LoginView()),
  ),
  GoRoute(
    path: "/home",
    builder: (context, state) => HomeView(),
  ),
  GoRoute(
    path: "/historicalPeriodsDetails",
    builder: (context, state) => HistoricalPeriodsDetailsView(model: state.extra as HistoricalPeriodModel,),
  ),
  GoRoute(
    path: "/charactersDetailsView",
    builder: (context, state) => CharactersDetailsView(model: state.extra as CharacterDetailsModel,),
  ),
  GoRoute(
    path: "/souvenirsDetailsView",
    builder: (context, state) => SouvenirsDetailsView(model: state.extra as SouvenirsModel,),
  ),
  GoRoute(
    path: "/forgetPassword",
    builder: (context, state) => BlocProvider(
        create: (context) => AuthCubit(), child: ForgetPasswordView()),
  ),
  GoRoute(
    path: "/homeNavBar",
    builder: (context, state) => BlocProvider(
        create: (context) => AuthCubit(), child: HomeNavBarWidget()),
  ),
]);
