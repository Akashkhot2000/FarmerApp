import 'package:equatable/equatable.dart';

abstract class ConnectionState extends Equatable {
  @override
  List<Object?> get props => [];
}

class ConnectionInitial extends ConnectionState {}

class ConnectionConnected extends ConnectionState {}

class ConnectionDisconnected extends ConnectionState {}