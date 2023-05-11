import 'package:flutter/material.dart';

import '../costum_widgets/bottomGallery.dart';
import '../costum_widgets/galleryDetails.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Name and Icon Row Widget Start
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Location',
                        style: TextStyle(
                            fontSize: 14, color: Colors.grey.shade400),
                      ),
                      Text(
                        'Los Angeles, CA',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.black)),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg'),
                  ),
                ),
              ],
            ),
            // Name and Icon Row Widget End

            // Heading Text Container Start
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                'Discover Best\nSuitable Property',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            // Heading Text Container End

            // Text Button Container Widget Start
            SingleChildScrollView(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  // House Button
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 1, 38, 56),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        textAlign: TextAlign.center,
                        'House',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),

                  // Rent Button
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 15),
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 118, 157, 177),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        textAlign: TextAlign.center,
                        'Rent',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),

                  // Flat Button
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 15),
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 118, 157, 177),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        textAlign: TextAlign.center,
                        'Flat',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),

                  // Appartement Button
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 15),
                    width: 145,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 118, 157, 177),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        textAlign: TextAlign.center,
                        'Appartement',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Text Button Container Widget End

            SizedBox(
              height: 10,
            ),

            // Text Widget Start
            Text(
              'Best For You',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            // Text Widget End

            SizedBox(
              height: 10,
            ),

            // Image and Text Container Widget Start
            SingleChildScrollView(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GalleryDetails(),
                  SizedBox(
                    width: 10,
                  ),
                  GalleryDetails(),
                  SizedBox(
                    width: 10,
                  ),
                  GalleryDetails(),
                  SizedBox(
                    width: 10,
                  ),
                  GalleryDetails(),
                ],
              ),
            ),
            // Image and Text Container Widget End

            SizedBox(
              height: 20,
            ),

            // Bottom Text Widget Start
            Text(
              'Nearby Your Location',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            // Bottom Text Widget Start

            SizedBox(
              height: 10,
            ),

            // Bottom Container Widget Start
            BottomGallery(),
            // Bottom Container Widget End
          ],
        ),
      ),
    );
  }
}
