import 'package:flutter/material.dart';

import '../widgets/Custom_Travel_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> category = [
    'All',
    'Popular',
    'Featured',
    'New Arrivals',
    'Recommended',
    'Recommended',
  ];

  int selectedCategoryIndex = 0;

  final List<Map<String, String>> travelDetails = [
    {
      'title': 'Northern Hills',
      'rating': '4.5',
      'img':
          'https://media.istockphoto.com/id/904172104/photo/weve-made-it-all-this-way-i-am-proud.jpg?s=612x612&w=0&k=20&c=MewnsAhbeGRcMBN9_ZKhThmqPK6c8nCT8XYk5ZM_hdg=',
    },
    {
      'title': 'Lakeside View ',
      'rating': '4.8',
      'img':
          'https://t3.ftcdn.net/jpg/03/01/84/54/360_F_301845445_Aj4iICMuzOfFkKW0U43l4aFAo05HZxIZ.jpg',
    },
    {
      'title': 'Mountain Escape',
      'rating': '4.3',
      'img':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5uEjTz29AHOTZQpLbr85_tPnn3oKBDTpCkQ&s',
    },
    {
      'title': 'Desert Adventure',
      'rating': '4.6',
      'img':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9G95vc_d7_1Y4ev_THe0njfGfHoD31tphfA&s',
    },
    {
      'title': 'Poon Hill',
      'rating': '4.6',
      'img':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREd15Vp10hEEp3JyPB2ZTzyP6Y7fvh3IMytA&s',
    },
    {
      'title': 'Lake View',
      'rating': '4.6',
      'img':
          'https://media.istockphoto.com/id/1337232523/photo/high-angle-view-of-a-lake-and-forest.jpg?s=612x612&w=0&k=20&c=72ZZZG5jNaEE0QRq6o4pUk3CI0gG-Lw5AeWQUVgO7zQ=',
    },
    {
      'title': 'Langtang Valley',
      'rating': '4.6',
      'img':
          'https://res.klook.com/image/upload/w_750,h_469,c_fill,q_85/w_80,x_15,y_15,g_south_west,l_Klook_water_br_trans_yhcmh3/activities/gumsusozweqkhrb5z2jq.jpg',
    },
    {
      'title': 'Manaslu Conservation Area',
      'rating': '4.6',
      'img':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbKGht0ud2K3syHUoQXMibCeBfpziYRkxeYg&s',
    },
  ];

  final PageController _pageController = PageController(viewportFraction: 0.85);
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      //refernce web
      // header --> appbar
      appBar: AppBar(
        leading: Image.asset('assets/img.jpg'),
        centerTitle: true,
        title: Text(
          'Discover',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-Ne7oVV6Lx9uAnmJDUZrrLcGy8yzo1sXdpQ&s",
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),

          child: Column(
            spacing: 10,
            children: [
              SizedBox(
                height: 20,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  itemCount: category.length,
                  itemBuilder: (context, index) {
                    final isSelected = selectedCategoryIndex == index;
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCategoryIndex = index;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 7.0),
                        child: Text(
                          category[index],
                          style: TextStyle(
                            fontWeight: isSelected
                                ? FontWeight.bold
                                : FontWeight.normal,
                            color: isSelected
                                ? Color(0xFF403A7A)
                                : Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 200,
                child: PageView.builder(
                  padEnds: false,
                  controller: _pageController,
                  itemCount: travelDetails.length,
                  onPageChanged: (index) {
                    setState(() => currentPage = index);
                  },
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: CustomTravelCard(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) =>product_screen()))
                        },
                        title: travelDetails[index]['title']!,
                        rating: travelDetails[index]['rating']!,
                        img: travelDetails[index]['img']!,
                      ),
                    );
                  },
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recommended',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text('View all'),
                ],
              ),

              SizedBox(
                height: 500,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: travelDetails.length,
                  itemBuilder: (context, index) {
                    return CustomTravelCard(
                      title: travelDetails[index]['title']!,
                      rating: travelDetails[index]['rating']!,
                      img: travelDetails[index]['img']!,
                      height: 150,
                      width: 150,
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
