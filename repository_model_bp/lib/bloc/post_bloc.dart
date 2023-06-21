import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:repository_model_bp/data/model/post.dart';
import 'package:repository_model_bp/data/repository/post_repository.dart';
part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  final PostRepository repository;
  PostBloc(this.repository) : super(PostInitial());

  @override
  Stream<PostState> mapEventToState(
    PostEvent event,
  ) async* {
    if (event is FetchPosts) {
      yield PostLoading();
      try {
        final posts = await repository.getAllPosts();
        yield PostLoaded(posts);
      } catch (error) {
        yield PostError(error.toString());
        print(error);
      }
    }
  }
}
