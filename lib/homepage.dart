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
      'description': 'High in omega-3 fatty acids.',
      'color': const Color.fromARGB(255, 255, 237, 198),
    },
  ];

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final appBarHeight = AppBar().preferredSize.height;
    final bannerHeight = screenHeight * 0.25;

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
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
        height: screenHeight,
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
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 3,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/banner.jpg'),
                      fit: BoxFit.cover,
                    ),
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
              Container(
                height: screenHeight - appBarHeight - bannerHeight - 80,
                child: GridView.builder(
                  physics:
                      const AlwaysScrollableScrollPhysics(), // Allow scrolling
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:
                        MediaQuery.of(context).size.width < 600 ? 2 : 4,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                    childAspectRatio: 0.7,
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
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Flexible(
                              child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(15.0),
                                  topRight: Radius.circular(15.0),
                                ),
                                child: Image.asset(
                                  category['image'],
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FittedBox(
                                    child: Text(
                                      category['title'],
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Cormorant',
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 3),
                                  FittedBox(
                                    child: Text(
                                      category['description'],
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color.fromRGBO(91, 86, 86, 1),
                                        fontSize: 12,
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
      ),
    );
  }
}
