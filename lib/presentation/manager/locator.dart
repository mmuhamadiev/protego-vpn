import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:protego_vpn/presentation/pages/home/manager/home_cubitd.dart';

final getIt = GetIt.instance;
setupConfiguration()async{
  Connectivity connectivity = Connectivity();

  getIt.registerSingleton<Connectivity>(connectivity);

  getIt.registerFactory<HomeCubit>(() => HomeCubit());
}