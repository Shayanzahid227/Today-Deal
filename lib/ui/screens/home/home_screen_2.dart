import 'package:flutter/material.dart';

class HomeScreen_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Red Image (Replace with your actual image)
          Container(
            height: 150, // Adjust height as needed
            width: double.infinity,
            color: Colors.red, // Placeholder red color
            // Replace with your image using Image.asset or Image.network
            // child: Image.asset('assets/your_red_image.png', fit: BoxFit.cover),
          ),
          // Container with Column for the rest of the UI
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                // Make the content scrollable
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Your UI elements go here (Categories, Top Rated, etc.)
                    Text(
                      'Categories',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    // Example: Category Buttons (Replace with your actual implementation)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Beauty'),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Restaurant'),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Pizza House'),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Jeweller'),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Top Rated for you',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    // Example: Grid of Top Rated Items (Replace with your actual implementation)
                    GridView.count(
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      physics:
                          NeverScrollableScrollPhysics(), // Disable GridView scrolling
                      children: [
                        // Replace with your actual Top Rated Item widgets
                        Container(
                          height: 150,
                          color: Colors.grey[200],
                        ),
                        Container(
                          height: 150,
                          color: Colors.grey[200],
                        ),
                        // Add more Top Rated items
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Near By Store',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    // Example: Grid of Nearby Stores (Replace with your actual implementation)
                    GridView.count(
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      physics:
                          NeverScrollableScrollPhysics(), // Disable GridView scrolling
                      children: [
                        // Replace with your actual Nearby Store widgets
                        Container(
                          height: 150,
                          color: Colors.grey[200],
                        ),
                        Container(
                          height: 150,
                          color: Colors.grey[200],
                        ),
                        // Add more Nearby Store items
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Famous Stores',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    // Example: Grid of Famous Stores (Replace with your actual implementation)
                    GridView.count(
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      physics:
                          NeverScrollableScrollPhysics(), // Disable GridView scrolling
                      children: [
                        // Replace with your actual Famous Store widgets
                        Container(
                          height: 150,
                          color: Colors.grey[200],
                        ),
                        Container(
                          height: 150,
                          color: Colors.grey[200],
                        ),
                        // Add more Famous Store items
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
