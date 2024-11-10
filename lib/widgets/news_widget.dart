import 'package:flutter/material.dart';

class NewsWidget extends StatelessWidget {
  final String? imageUrl;
  final String title;
  final String description;
  NewsWidget({required this.imageUrl, required this.title, required this.description});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          imageUrl != null
              ? Image.network(imageUrl!)
              : Container(height: 200, color: Colors.grey),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(height: 4),
                Text(description),
              ],
            ),
          ),
        ],
      ),
    );
  }
}