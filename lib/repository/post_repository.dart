// repositories/user_repository.dart
import 'package:flutter_project_structure/Model/postModel/post.dart';

import '../services/api_service.dart';

class PostRepository {
  final ApiService apiService;

  PostRepository(this.apiService);

  Future<List<Post>> getUsers() {
    return apiService.getUsers();
  }
}
