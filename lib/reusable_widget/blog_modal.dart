class Blog {
  final String title;
  final String content;
  final String? imageUrl; // Nullable

  Blog({required this.title, required this.content, this.imageUrl});
}