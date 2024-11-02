import 'package:equatable/equatable.dart';

abstract class ConnectionEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class ConnectionChanged extends ConnectionEvent {
  final bool isConnected;

  ConnectionChanged(this.isConnected);

  @override
  List<Object?> get props => [isConnected];
}