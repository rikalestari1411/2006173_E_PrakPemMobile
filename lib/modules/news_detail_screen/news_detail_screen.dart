import 'package:flutter/material.dart';

class NewsDetailScreen extends StatefulWidget {
  const NewsDetailScreen({
    Key? key,
    required this.id,
  }) : super(key: key);
  final String id;

  @override
  _NewsDetailScreenState createState() => _NewsDetailScreenState();
}

class _NewsDetailScreenState extends State<NewsDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Detail'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://www.linkpicture.com/q/verajj-29414382-2095862587369901-8483266545173135360-n.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Gorengan: Popular Indonesian Street Food',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          'Gorengan is a generic name that refers to a wide group of Indonesian deep-fried snacks that can be prepared with a variety of ingredients. Whether savory or sweet, the fritters usually combine egg batter with various additions such as bananas, tempeh, tofu, sweet potatoes, or jackfruit. The ingredients can be finely sliced and incorporated into the batter or merely dipped before they are fried. Gorengan is one of the most common Indonesian street food items that is sold at numerous markets throughout the country. Although they come in a seemingly endless number of combinations, some of the most popular varieties include pisang goreng (bananas), ubi goreng (sweet potato), aci goreng (fried tapioca dough), tahu goreng (fried tofu), and singkong goreng (fried cassava).',
                    ),
                  ],
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
