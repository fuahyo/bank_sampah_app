import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:loginandsignup/presention/pages/bank_sampah/cubit/bank_sampah_cubit.dart';
import 'package:loginandsignup/presention/pages/detail_riwayat/cubit/detal_history_cubit.dart';
import 'package:loginandsignup/presention/pages/home/cubit/home_cubit.dart';
// import 'package:loginandsignup/pages/pages.dart';
import 'package:loginandsignup/presention/pages/pages.dart';
import 'package:loginandsignup/presention/pages/riwayat/cubit/riwayat_cubit.dart';
import 'package:loginandsignup/presention/pages/tukar_poin/cubit/tukarpoint_cubit.dart';

final GoRouter router = GoRouter(initialLocation: "/LoginScreen", routes: [
  GoRoute(
    path: "/Splash_Screen",
    name: "splash",
    builder: (context, state) => SplashScreen(),
  ),
  GoRoute(
    path: "/LoginScreen",
    name: "login",
    builder: (context, state) => LoginScreen(),
  ),
  GoRoute(
    path: "/AutentikasiScreen",
    name: "auten",
    builder: (context, state) => AutentikasiScreen(),
  ),
  GoRoute(
    path: "/SuccesScreen",
    name: "succes",
    builder: (context, state) => SuccesScreen(),
  ),
  GoRoute(
    path: "/HomeScreen",
    name: "homescreen",
    builder: (context, state) {
      BlocProvider.of<HomeCubit>(context).fecthHome();
      return const HomeScreen();
    },
  ),
  GoRoute(
    path: "/LayananScreen",
    name: "layanan",
    builder: (context, state) => LayananScreen(),
  ),
  GoRoute(
    path: "/RegisterScreen",
    name: "resgis",
    builder: (context, state) => RegisterScreen(),
  ),
  GoRoute(
      path: "/NavigasiBar",
      name: "navbar",
      builder: (context, state) {
        BlocProvider.of<HomeCubit>(context).fecthHome();
        return NavigasiBar();
      }),
  GoRoute(
    path: "/LupaPassword",
    name: "lupa",
    builder: (context, state) => LupaPassword(),
  ),
  GoRoute(
    path: "/ConfigPass",
    name: "configpass",
    builder: (context, state) => ConfigPass(),
  ),
  GoRoute(
    path: "/SuccesPass",
    name: "succespass",
    builder: (context, state) => SuccesPass(),
  ),
  GoRoute(
    path: "/LayananScreen",
    name: "layananscreen",
    builder: (context, state) => SuccesPass(),
  ),
  GoRoute(
    path: "/BankSampahScreen",
    name: "bank",
    builder: (context, state) {
      BlocProvider.of<BankSampahCubit>(context).fecthBankSampah("");
      return const BankSampahScreen();
    },
  ),
  GoRoute(
    path: "/TukarPoint1",
    name: "point1",
    builder: (context, state) {
      BlocProvider.of<TukarpointCubit>(context).fecthTukarPoint();
      return const TukarPoint1();
    },
  ),
  GoRoute(
    path: "/PenjemputanScreen",
    name: "penjemputan",
    builder: (context, state) => PenjemputanScreen(),
  ),
  GoRoute(
    path: "/SampahPenjemputan",
    name: "sampahpenjemputan",
    builder: (context, state) => SampahPenjemputan(),
  ),
  GoRoute(
    path: "/SuccessPenjemputan",
    name: "successpenjemputan",
    builder: (context, state) => SuccessPenjemputan(),
  ),
  GoRoute(
    path: "/DetailRiwayat",
    name: "detailriwayat",
    builder: (context, state) {
      BlocProvider.of<DetalHistoryCubit>(context)
          .fecthDetailHistory("Detail History");
      return const DetailRiwayat();
    },
  ),
  GoRoute(
      path: "/RiwayatScreen",
      name: "riwayat",
      builder: (context, state) {
        BlocProvider.of<RiwayatCubit>(context).fecthHistory("History");
        return const RiwayatScreen();
      }),
  GoRoute(
    path: "/ArticleScreen",
    name: "article",
    builder: (context, state) => ArticleScreen(),
  ),
  GoRoute(
    path: "/DetailArticle",
    name: "detailarticle",
    builder: (context, state) => DetailArticle(),
  ),
  GoRoute(
    path: "/ChangeProfile",
    name: "changeProfile",
    builder: (context, state) => ChangeProfile(),
  ),
  GoRoute(
    path: "/Profile",
    name: "Profile",
    builder: (context, state) => Profile(),
  ),
]);
