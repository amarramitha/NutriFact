import 'package:flutter/material.dart';
import 'detail_page.dart'; // Import the DetailPage class
import 'add_item_page.dart';

class CategoryPage extends StatelessWidget {
  final String categoryTitle;

  const CategoryPage({Key? key, required this.categoryTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> items;
    List<String> images;
    List<String> descriptions;

    switch (categoryTitle) {
      case 'Fruits':
        items = [
          'Apple',
          'Banana',
          'Orange',
          'Strawberry',
          'Avocado',
          'Dragon Fruit',
          'Starfruit',
          'Lemon',
          'Papaya',
          'Kiwi'
        ];
        images = [
          'images/apple.jpg',
          'images/banana.jpg',
          'images/orange.jpg',
          'images/strawberry.jpg',
          'images/avocado.jpg',
          'images/dragonfruit.jpg',
          'images/starfruit.jpg',
          'images/lemon.jpg',
          'images/papaya.jpg',
          'images/kiwi.jpg'
        ];
        descriptions = [
          'Rich in fiber, particularly pectin, which is good for digestion. Apples are also high in vitamin C and antioxidants like flavonoids that help reduce the risk of heart disease and promote skin health.',
          'A great source of potassium, which supports heart health and blood pressure. Bananas are also high in vitamin B6, essential for brain function, and serotonin, which can help improve mood.',
          'Orange is rich in vitamin C, which boosts the immune system and collagen production. Oranges also contain fiber and antioxidants, such as flavonoids, that support heart health.',
          'Strawberry is a delicious berry. Rich in vitamin C and manganese, which are good for skin health and metabolic functions. Strawberries also contain high levels of antioxidants that help reduce inflammation and support eye health.',
          'Full of healthy fats, mainly monounsaturated fatty acids, which are beneficial for heart health. Avocados also contain fiber, potassium, and vitamins K, E, and B6, supporting skin health and the nervous system.',
          'Dragon Fruit is exotic and nutritious. Low in calories and rich in fiber, vitamin C, and antioxidants such as betalains, which support heart health. Dragon fruit also provides iron and magnesium, essential for energy production and bone health.',
          'Starfruit is sweet and juicy. Contains vitamin C, fiber, and antioxidants. Low in calories, starfruit is beneficial for digestion and heart health, though those with kidney issues should consume it cautiously.',
          'Lemon is a zesty fruit. High in vitamin C, which strengthens the immune system and aids iron absorption. Lemons also contain flavonoid compounds that fight free radicals and promote heart health.',
          'Papaya is a tropical delight. Rich in the enzyme papain, which aids digestion, as well as vitamins C and A that support immunity. Papaya also contains fiber and antioxidants, beneficial for skin health and digestive health.',
          'Kiwi is a vitamin-rich fruit. Exceptionally high in vitamin C, even more than oranges, along with vitamins K and E. Kiwis are also high in fiber, which helps with digestion and maintains blood sugar levels.'
        ];
        break;
      case 'Vegetables':
        items = [
          'Potato',
          'Broccoli',
          'Onion',
          'Mushroom',
          'Scallion',
          'Cabbage',
          'Carrot',
          'Chili',
          'Cucumber',
          'Lettuce',
          'Bell Peper',
          'Parsley',
          'Spinach'
        ];
        images = [
          'images/potato.jpg',
          'images/broccoli.jpg',
          'images/onion.jpg',
          'images/mushroom.jpg',
          'images/scallions.jpg',
          'images/cabbage.jpg',
          'images/carrot.jpg',
          'images/chili.jpg',
          'images/cucumber.jpg',
          'images/lettuce.jpg',
          'images/paprika.jpg',
          'images/parsley.jpg',
          'images/spinach.jpg'
        ];
        descriptions = [
          'Potato is a versatile vegetable. Potatoes are high in carbohydrates, mainly starch, making them a good source of energy. They also contain vitamin C, potassium, and fiber, especially when eaten with the skin, which aids in digestion and supports heart health.',
          'Broccoli is rich in vitamins C, K, and A, broccoli is also packed with fiber and antioxidants. It contains sulforaphane, a compound that may help reduce inflammation and lower the risk of certain cancers.',
          'Onions are a good source of vitamin C, fiber, and antioxidants like quercetin, which has anti-inflammatory properties. They can also promote heart health and improve immunity.',
          'Mushrooms are low in calories and rich in B vitamins, selenium, and antioxidants, particularly ergothioneine, which helps protect cells from damage. Some varieties are also a natural source of vitamin D.',
          'Scallions are high in vitamins K, C, and A, and they contain antioxidants that help reduce inflammation. They are beneficial for bone health and immune function.',
          'Cabbage is rich in fiber, vitamin C, and K, and contains antioxidants like anthocyanins and glucosinolates, which may support heart health and reduce the risk of cancer.',
          'Known for its high beta-carotene content, which the body converts into vitamin A, carrots support eye health and immune function. They also provide fiber and antioxidants.',
          'Chilies contain capsaicin, which may boost metabolism and reduce pain. They are also high in vitamins C and A, supporting immunity and skin health.',
          'Low in calories and high in water content, cucumbers are hydrating and provide small amounts of vitamins C and K. They’re also a good source of fiber, particularly if eaten with the skin.',
          'Lettuce is low in calories and high in water, making it hydrating and refreshing. It contains fiber, vitamin A, and folate, which are good for skin and cell function.',
          'Bell peppers are loaded with vitamins C and A, which support immune health and vision. They also contain antioxidants like carotenoids, which may protect against chronic diseases.',
          'Parsley is rich in vitamins K, C, and A, and contains antioxidants like flavonoids. It also has anti-inflammatory properties and may support bone health.',
          'High in iron, vitamins A and C, folate, and antioxidants like lutein, spinach is beneficial for blood health, eye health, and immune function. It’s also a good source of magnesium.'
        ];
        break;
      case 'Meat':
        items = ['Chicken', 'Beef', 'Pork'];
        images = ['images/chicken.jpg', 'images/beef.jpg', 'images/pork.jpg'];
        descriptions = [
          'Chicken is a lean protein source, particularly when skinless, making it excellent for muscle maintenance and growth. It is rich in B vitamins, especially niacin (B3) and B6, which support energy metabolism and brain health. Chicken also contains minerals like phosphorus and selenium, which are essential for bone health and immune function.',
          'Beef is high in protein and a great source of iron, especially heme iron, which is more easily absorbed by the body compared to plant-based iron. It also contains zinc, which is important for immune health, and B vitamins, particularly B12, which supports nerve function and red blood cell formation. Grass-fed beef also has higher levels of omega-3 fatty acids and conjugated linoleic acid (CLA), which may provide heart-health benefits.',
          'Pork is a rich source of thiamine (vitamin B1), which is crucial for energy production and nerve health. It also provides high-quality protein, zinc, and iron. Additionally, pork contains vitamins B6 and B12, which are important for brain health and immune function. Lean cuts of pork, such as tenderloin, offer these nutrients with less saturated fat, making them a healthier choice.'
        ];
        break;
      case 'Seafood':
        items = [
          'Salmon',
          'Shrimp',
          'Tuna',
          'Clam',
          'Crab',
          'Lobster',
          'Squid'
        ];
        images = [
          'images/salmon.jpg',
          'images/shrimp.jpg',
          'images/tuna.jpg',
          'images/clam.jpg',
          'images/crab.jpg',
          'images/lobster.jpg',
          'images/squid.jpg'
        ];
        descriptions = [
          'Salmon is rich in high-quality protein and omega-3 fatty acids (DHA and EPA), which are beneficial for heart health, brain function, and reducing inflammation. It’s also a good source of B vitamins, particularly B12, as well as selenium and potassium, supporting immunity, nerve health, and muscle function.',
          'Shrimp is low in calories and high in protein, making it excellent for muscle health. It’s also rich in antioxidants like astaxanthin, which may protect cells from damage, and provides selenium, vitamin B12, and choline, which are beneficial for brain and heart health.',
          'Tuna is an excellent source of lean protein and omega-3 fatty acids, promoting heart and brain health. It’s also high in vitamins D and B12, which support bone health and nerve function, as well as selenium, an important antioxidant.',
          'Clams are packed with iron, which supports red blood cell production, and are one of the best sources of vitamin B12, essential for nerve health. They also provide omega-3 fatty acids, protein, and minerals like zinc and selenium, which boost immunity.',
          'Crab is high in protein and contains a good amount of omega-3 fatty acids, which are good for the heart and reduce inflammation. It’s also rich in selenium, copper, and B vitamins, supporting immune function, antioxidant protection, and energy production.',
          'Lobster is a high-protein, low-fat seafood option and a great source of selenium, which helps protect against cell damage. It also contains B vitamins, particularly B12, and minerals like zinc and copper, which support immunity and red blood cell formation.',
          'Squid is low in calories and high in protein. It provides essential vitamins and minerals, including vitamin B12, selenium, and phosphorus, which are important for bone health, immunity, and energy metabolism. It also contains small amounts of omega-3 fatty acids.'
        ];
        break;
      default:
        items = [];
        images = [];
        descriptions = [];
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          categoryTitle,
          style: const TextStyle(
            fontFamily: 'Cormorant',
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 186, 230, 144),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      AddItemPage(categoryTitle: categoryTitle),
                ),
              );
            },
          ),
        ],
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
        child: GridView.builder(
          padding: const EdgeInsets.all(8.0),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 0.75,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Card(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailPage(
                        itemName: items[index],
                        itemImage: images[index],
                        itemDescription: descriptions[index],
                      ),
                    ),
                  );
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(8.0)),
                        child: Image.asset(
                          images[index],
                          fit: BoxFit
                              .cover, // Ubah ke BoxFit.cover agar gambar memenuhi area
                          width: double.infinity,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        items[index],
                        style: TextStyle(
                          color: Colors.black,
                          fontSize:
                              MediaQuery.of(context).size.width > 600 ? 20 : 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Cormorant',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
