import 'package:code_structure/core/constants/app_assest.dart';
import 'package:code_structure/core/constants/auth_text_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SalonServicesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {},
        ),
        title: Text("Salon Services", style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(child: SearchBarWidget()),
                20.horizontalSpace,
                Image.asset(
                  AppAssets().iconfilter,
                  scale: 2.5,
                ),
              ],
            ),
            CategoryTabs(),
            Expanded(child: ServicesList()),
            BannerWidget(),
            GallerySection(),
            ReviewsSection(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

// Search Bar
class SearchBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(30),
        ),
        child: TextFormField(
          decoration: authFieldDecoration.copyWith(
              contentPadding: EdgeInsets.all(5),
              hintText: 'Search For services',
              prefixIcon: Image.asset(AppAssets().searchIcon, scale: 4)),
        ));
  }
}

// Category Tabs
class CategoryTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CategoryTab(title: "Haircut", isActive: true),
        CategoryTab(title: "Facial", isActive: false),
        CategoryTab(title: "Nails", isActive: false),
      ],
    );
  }
}

class CategoryTab extends StatelessWidget {
  final String title;
  final bool isActive;

  CategoryTab({required this.title, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
      decoration: BoxDecoration(
        color: isActive ? Colors.red : Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.red),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: isActive ? Colors.white : Colors.red,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

// Services List
class ServicesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 4,
      itemBuilder: (context, index) {
        return ServiceItem();
      },
    );
  }
}

class ServiceItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: ListTile(
        leading: Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/haircut.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text("Medium Length Layer Cut"),
        subtitle: Text("1 hour - \$80"),
        trailing: Icon(Icons.add_circle, color: Colors.green),
      ),
    );
  }
}

// Banner Section
class BannerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Get offer now! Up to 50%"),
          Icon(Icons.local_offer, color: Colors.red),
        ],
      ),
    );
  }
}

// Gallery Section
class GallerySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(5),
            width: 70,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/gallery.jpg"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          );
        },
      ),
    );
  }
}

// Reviews Section
class ReviewsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Reviews",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage("assets/user.jpg")),
          title: Text("Jennie Whang"),
          subtitle: Text("Great service, highly recommended!"),
          trailing: Icon(Icons.star, color: Colors.yellow),
        ),
      ],
    );
  }
}

// Bottom Navigation
class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: "Services"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
        BottomNavigationBarItem(icon: Icon(Icons.menu), label: "More"),
      ],
    );
  }
}
