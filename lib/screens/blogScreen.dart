import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../reusable_widget/blog_modal.dart';
import 'blog_provider.dart';
import 'package:provider/provider.dart';
import 'package:image_picker/image_picker.dart';

class BlogScreen extends StatefulWidget {



  @override
  _BlogScreenState createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();
  File? _image;

  Future<void> _getImage(ImageSource source) async {
    final pickedFile = await ImagePicker().getImage(source: source);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  void _publishBlog() async {
    var newBlog = Blog(
      title: _titleController.text,
      content: _contentController.text,
      imageUrl: _image != null ? _image!.path : null,
    );

    await Provider.of<BlogProvider>(context, listen: false).addBlog(newBlog);

    setState(() {
      _titleController.clear();
      _contentController.clear();
      _image = null; // Clear image after adding blog
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blog App'),
        actions: [
          IconButton(
            icon: Icon(Icons.upload_outlined),
            onPressed: _publishBlog,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Consumer<BlogProvider>(
              builder: (context, blogProvider, _) => ListView.builder(
                itemCount: blogProvider.blogs.length,
                itemBuilder: (context, index) {
                  var blog = blogProvider.getBlogAtIndex(index);
                  return ListTile(
                    title: Text(blog!.title),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(blog.content),
                        if (blog.imageUrl != null)
                          Image.network(blog.imageUrl!)
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextField(
                  controller: _titleController,
                  decoration: InputDecoration(
                    labelText: 'Title',
                  ),
                ),
                TextField(
                  controller: _contentController,
                  decoration: InputDecoration(
                    labelText: 'Content',
                  ),
                  maxLines: 3,
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () => _getImage(ImageSource.camera),
                      child: Text('Take Picture'),
                    ),
                    ElevatedButton(
                      onPressed: () => _getImage(ImageSource.gallery),
                      child: Text('Choose from Gallery'),
                    ),
                  ],
                ),
                if (_image != null)
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: FileImage(_image!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _publishBlog,
        tooltip: 'Publish',
        child: Icon(Icons.upload_outlined),
      ),
    );
  }
}

