import 'package:flutter/material.dart';

class ProductDesScreen extends StatefulWidget {
  final String title;
  final String img;
  final String rating;
  final String desc;
  const ProductDesScreen({
    required this.rating,
    super.key,
    required this.title,
    required this.img,
    required this.desc,
  });

  @override
  State<ProductDesScreen> createState() => _ProductDesScreenState();
}

class _ProductDesScreenState extends State<ProductDesScreen> {
  int package = 400;
  int productItem = 1;
  void onRemove() {
    setState(() {
      if (productItem > 0) {
        productItem--;
        package = productItem * package;
      }
    });
  }

  void onAdd() {
    setState(() {
      productItem++;
      package = productItem * package;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Red top section
            Container(
              height: screenHeight * 0.45,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                  image: NetworkImage(widget.img),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // White section slightly overlapping
            Container(
              width: double.infinity,
              transform: Matrix4.translationValues(
                0.0,
                -50.0,
                0.0,
              ), // overlap effect
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              padding: const EdgeInsets.all(20),
              child: Column(
                spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      for (int i = 1; i <= 5; i++)
                        Icon(
                          i <= double.parse(widget.rating)
                              ? Icons.star
                              : Icons.star_border,
                          color: Color(0xFFF4D150),
                          size: 16,
                        ),

                      const SizedBox(width: 8),
                      Text(
                        widget.rating,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Color(0xFFF4D150),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: IconButton(
                          onPressed: onRemove,
                          icon: Icon(Icons.remove),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          productItem.toString(),
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      Container(
                        height: 40,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Color(0xFFF4D150),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: IconButton(
                          onPressed: onAdd,
                          icon: Icon(Icons.add),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          '\$${package.toString()}',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Description",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(widget.desc, style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
