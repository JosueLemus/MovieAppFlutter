import 'dart:ui';

import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUri =
        'https://images-na.ssl-images-amazon.com/images/I/51Fy3OVVipL._SX466_.jpg';
    final story =
        'En 1846 en los Five Points del bajo Manhattan, una guerra territorial entre los «Nativos» (conformados por aquellos de ascendencia británica nacidos en Estados Unidos) y los inmigrantes irlandeses católicos recién llegados está a punto de desatarse en Paradise Square. Los Nativos están liderados por William «Bill the Butcher» Cutting (Daniel Day-Lewis), un estadounidense protestante opuesto a la reciente inmigración. ';
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final heightImage = height * 0.4;
    return Scaffold(
      body: Stack(
        children: [
          Image.network(
            imageUri,
            height: heightImage,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: EdgeInsets.only(top: height * 0.37),
            child: Container(
              padding: EdgeInsets.only(top: 20,left: 15,right: 15),
              height: height * 0.63,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Colors.white),
              child: SingleChildScrollView(
                              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text('Gangs Of New York',
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Chip(
                            backgroundColor: Colors.grey[300],
                            label: Text('Comedia')),
                        SizedBox(width: 15),
                        Chip(
                            backgroundColor: Colors.grey[300],
                            label: Text('Viacha')),
                        SizedBox(width: 15),
                        Chip(
                            backgroundColor: Colors.grey[300],
                            label: Text('Adam Sandler')),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text('Story',
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                    SizedBox(
                      height: 15,
                    ),
                    Text(story, style: TextStyle(color: Colors.grey[600])),
                    SizedBox(
                      height: 15,
                    ),
                    Text('Cast',
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                    SizedBox(
                      height: 15,
                    ),
                    _listCast(context),
                    InkWell(
                      
                      child: Container(
                        width: double.infinity,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(colors: [Color(0xffF2BC1B),Color(0xffF2B035)]),
                          // color: Color(0xffF2BC1B)
                        ),
                        child: Center(child: Text('Book Ticket', style: TextStyle(fontSize: 16),),),
                        ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _listCast(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.20;
    return Container(
      height: height,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _actor(
              context,
              'https://images.memefier.com/media/django-summernote/2020-09-09/9e479049-9fbb-428f-81b1-41940d909c2f.jpg',
              'Leonardo Dicarprio',
              'Cocinero'),
          _actor(
              context,
              'https://th.bing.com/th/id/OIP.V1OX_nuVlhH_hOhU27sghwHaIN?pid=ImgDet&w=650&h=720&rs=1',
              'Scarlett Johansson',
              'Mata a leo'),
          _actor(context, 'https://img.youtube.com/vi/GyozlaUQzGo/0.jpg',
              'Cameron Diaz', 'Mata a leo'),
        ],
      ),
    );
  }

  Widget _actor(
      BuildContext context, String imageUri, String nameActor, String cast) {
    final width = MediaQuery.of(context).size.width * 0.3;
    final height = MediaQuery.of(context).size.height * 0.15;
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                imageUri,
                width: width,
                height: height,
                fit: BoxFit.cover,
              )),
          Text(
            nameActor,
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          Text(
            cast,
            style: TextStyle(color: Colors.grey, fontSize: 12),
          )
        ],
      ),
    );
  }
}
