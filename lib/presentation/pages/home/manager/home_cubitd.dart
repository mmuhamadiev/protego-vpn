import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_vpn/flutter_vpn.dart';
import 'package:flutter_vpn/state.dart';
import 'package:protego_vpn/presentation/pages/home/manager/home_state.dart';

class HomeCubit extends Cubit<HomeState>{
  HomeCubit():super(HomeState(isStarted: 'disconnected'));
  onTapButton(){
    FlutterVpn.connectIkev2EAP(
      server: '143.198.79.95',
      username: 'testuser2',
      password: "1234Qwer",
    );
  }

  void connectionState(String connection) {
    emit(HomeState(isStarted: connection));
  }
}