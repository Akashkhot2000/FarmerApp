import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_project_structure/bloc/internetconnectbloc/internetconnection_event.dart';
import 'package:flutter_project_structure/bloc/internetconnectbloc/internetconnection_state.dart';



// Internet Connection BLoC
class ConnectionBloc extends Bloc<ConnectionEvent, ConnectionState> {
  ConnectionBloc() : super(ConnectionInitial()) {
    Connectivity().onConnectivityChanged.listen((result) {
      final isConnected = result != ConnectivityResult.none;
      add(ConnectionChanged(isConnected));
    });
  }

  @override
  Stream<ConnectionState> mapEventToState(ConnectionEvent event) async* {
    if (event is ConnectionChanged) {
      if (event.isConnected) {
        yield ConnectionConnected();
      } else {
        yield ConnectionDisconnected();
      }
    }
  }
}
