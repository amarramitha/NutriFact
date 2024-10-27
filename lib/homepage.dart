import 'package:flutter/material.dart';
import 'package:projekdicoding/category_page.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {
      'image': 'images/fruitsbanner.jpg',
      'title': 'Fruits',
      'description': 'Rich in vitamins and fiber',
      'color': const Color.fromARGB(255, 252, 219, 170),
    },
    {
      'image': 'images/vegetablesbanner.jpg',
      'title': 'Vegetables',
      'description': 'High in nutrients and minerals',
      'color': Colors.green[200],
    },
    {
      'image': 'images/meat.jpg',
      'title': 'Meat',
      'description': 'Rich in protein',
      'color': const Color.fromARGB(255, 232, 239, 154),
    },
    {
      'image': 'images/seafood.jpg',
      'title': 'Seafood',
      'description': 'Rich in protein',
      'color': const Color.fromARGB(255, 255, 237, 198),
    },
  ];

  @override
  Widget build(BuildContext context) {
    // Get screen width
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text(
            'NutriFact',
            style: TextStyle(
              fontFamily: 'Caveat',
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 186, 230, 144),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 237, 237, 149),
              const Color.fromARGB(255, 186, 230, 144),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 200.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/banner.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Explore the Nutritional Benefits of Food',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Cormorant',
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Find the best nutritional values in each category!',
                    style: TextStyle(
                      color: Color.fromRGBO(91, 86, 86, 1),
                      fontSize: 16,
                      fontFamily: 'Cormorant',
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.all(screenWidth < 600 ? 10.0 : 20.0),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: screenWidth < 600 ? 2 : 4,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final category = categories[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoryPage(
                            categoryTitle: category['title'],
                          ),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: category['color'],
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                            ),
                            child: Image.asset(
                              category['image'],
                              fit: BoxFit.cover,
                              height: 150,
                              width: double.infinity,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                  child: Text(
                                    category['title'],
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Cormorant',
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Center(
                                  child: Text(
                                    category['description'],
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      color: Color.fromRGBO(91, 86, 86, 1),
                                      fontFamily: 'Cormorant',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
