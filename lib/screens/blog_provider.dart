import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../reusable_widget/blog_modal.dart';


class BlogProvider with ChangeNotifier {
  List<Blog> _blogs = [];

  List<Blog> get blogs => [..._blogs];

  Blog? getBlogAtIndex(int index) {
    if (index < _blogs.length) {
      return _blogs[index];
    }
    return null;
  }

  Future<void> addBlog(Blog blog) async {
    _blogs.add(blog);
    notifyListeners();

    // Save blogs to local storage (shared preferences in this example)
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setStringList('blogs', _blogs.map((blog) => blog.title + '|' + blog.content).toList());
  }

  Future<void> loadBlogsFromStorage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? storedBlogs = prefs.getStringList('blogs');

    if (storedBlogs != null) {
      _blogs = storedBlogs.map((blogString) {
        List<String> parts = blogString.split('|');
        return Blog(title: parts[0], content: parts[1]);
      }).toList();
    }

    notifyListeners();
  }
}