import 'package:flutter/material.dart';

class GalleryDetails extends StatelessWidget {
  const GalleryDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color.fromARGB(255, 1, 38, 56)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image Container
          Container(
            width: 355,
            height: 230,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              image: DecorationImage(
                image: NetworkImage(
                    "https://www.mydomaine.com/thmb/bepet4VMGUG70sCLFNQRdZm9bbg=/2048x0/filters:no_upscale():strip_icc()/SuCasaDesign-Modern-9335be77ca0446c7883c5cf8d974e47c.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          // Heading and Information of an Image Widgets
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 20),
            child: Text(
              'CRAFTSMAN HOUSE',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20),
            child: Text(
              '520 N Btoudry Ave Los Angeles',
              style: TextStyle(color: Colors.grey.shade600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, bottom: 20),
            child: Row(
              children: [
                Icon(
                  Icons.bedroom_child_outlined,
                  color: Colors.yellow.shade700,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '4 Beds',
                  style: TextStyle(color: Colors.grey.shade600),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.bathtub_outlined,
                  color: Colors.yellow.shade700,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '4 Baths',
                  style: TextStyle(color: Colors.grey.shade600),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.car_rental,
                  color: Colors.yellow.shade700,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '1 Garage',
                  style: TextStyle(color: Colors.grey.shade600),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
