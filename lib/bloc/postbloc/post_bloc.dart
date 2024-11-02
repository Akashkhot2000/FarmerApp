import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_project_structure/Model/postModel/post.dart';
import 'package:flutter_project_structure/bloc/internetconnectbloc/internetconnection_bloc.dart';
import 'package:flutter_project_structure/bloc/internetconnectbloc/internetconnection_state.dart';
import 'package:flutter_project_structure/bloc/postbloc/post_state.dart';
import 'package:flutter_project_structure/repository/post_repository.dart';

part 'post_event.dart';


class PostBloc extends Bloc<PostEvent, PostState> {
  final PostRepository postRepository;
  final ConnectionBloc connectionBloc;

  PostBloc(this.postRepository, this.connectionBloc) : super(PostInitial()) {
    connectionBloc.stream.listen((connectionState) {
      if (connectionState is ConnectionConnected) {
        add(FetchPosts());
      } else {
        // emit(PostNoConnection());
      }
    });

    on<FetchPosts>((event, emit) async {
      emit(PostLoading());
      try {
        final posts = await postRepository.getUsers();
        emit(PostLoaded(posts));
      } catch (e) {
        emit(PostError(e.toString()));
      }
    });
  }
}
