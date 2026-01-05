import 'package:flutter/material.dart';

class CustomTravelCard extends StatelessWidget {
  final String title;
  final String rating;
  final String img;
  final double? height;
  final double? width;
  final void Function()? onTap;
  const CustomTravelCard({
    super.key,
    required this.title,
    required this.rating,
    required this.img,
    this.height = 200,
    this.width = 300,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(img), fit: BoxFit.cover),
          color: Colors.red,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black.withValues(alpha: 0.3),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),

                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow, size: 16),
                      Icon(Icons.star, color: Colors.yellow, size: 16),
                      Icon(Icons.star, color: Colors.yellow, size: 16),
                      Icon(Icons.star, color: Colors.yellow, size: 16),
                      Icon(Icons.star, color: Colors.yellow, size: 16),
                      SizedBox(width: 8),
                      Text(
                        rating,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
