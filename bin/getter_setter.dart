import 'data/post.dart';

void main() {
  Post post = Post(1, 'My First Post');
  // post.id = 1; // will error: There isn't a setter named 'id' in class 'Post'. Because has not setter.
  post.title = 'Title Changed';
  print('Post id: ${post.id}');
  print('Post title: ${post.title}');
}