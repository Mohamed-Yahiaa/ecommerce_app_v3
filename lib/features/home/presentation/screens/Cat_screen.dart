import 'package:ecommerce_app/features/home/data/main_cat_model.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CatScreen extends StatelessWidget {
  final Category category;

  const CatScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(category.title), centerTitle: true),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // صورة التصنيف الرئيسية
            Hero(
              tag: 'category_${category.id}',
              child: CachedNetworkImage(
                imageUrl: category.imageUrl,
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),

            // مساحة بين العناصر
            const SizedBox(height: 20),

            // عنوان التصنيف
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                category.title,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue.shade800,
                    ),
              ),
            ),

            // قائمة المنتجات (مثال)
            const SizedBox(height: 20),
            _buildProductsGrid(),
          ],
        ),
      ),
    );
  }

  // دالة مساعدة لعرض المنتجات (تعدلها حسب احتياجك)
  Widget _buildProductsGrid() {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(8),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.8,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: 6, // عدد المنتجات الوهمية
      itemBuilder: (context, index) {
        return Card(
          elevation: 3,
          child: Column(
            children: [
              Expanded(
                child: CachedNetworkImage(
                  imageUrl: 'https://picsum.photos/200?random=$index',
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  'منتج ${index + 1}',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
