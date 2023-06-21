import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repository_model_bp/bloc/post_bloc.dart';
import 'package:repository_model_bp/data/repository/post_repository.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: BlocProvider(
      create: (context) => PostBloc(PostRepositoryImpl())..add(FetchPosts()),
      child: Home(),
    ));
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('All Posts')),
      body: Center(
        child: BlocBuilder<PostBloc, PostState>(
          builder: (context, state) {
            if (state is PostLoading) {
              return CircularProgressIndicator(
                backgroundColor: Colors.red,
              );
            } else if (state is PostLoaded) {
              return ListView.builder(
                  itemCount: state.posts.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: EdgeInsets.all(10.0),
                      child: ListTile(
                        title: Text(
                            '${state.posts[index].id} - ${state.posts[index].title}'),
                        subtitle: Text(state.posts[index].body.toString()),
                      ),
                    );
                  });
            } else if (state is PostError) {
              return Text(state.message);
            } else {
              return CircularProgressIndicator(
                backgroundColor: Colors.green,
              );
            }
          },
        ),
      ),
    );
  }
}
