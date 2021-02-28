import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  'https://m.media-amazon.com/images/M/MV5BNDg3MmI1ZDYtMDZjYi00ZWRlLTk4NzEtZjY4Y2U0NjE5YmRiXkEyXkFqcGdeQXVyNzAxMjE1NDg@._V1_UY1200_CR92,0,630,1200_AL_.jpg',
  'https://k37.kn3.net/554227415.jpg',
  'https://th.bing.com/th/id/Rf2e73465ab3568fabdfbfd0059500dd2?rik=PhQcPB5uvjKRWw&riu=http%3a%2f%2fes.web.img3.acsta.net%2fpictures%2f14%2f07%2f28%2f12%2f27%2f483839.jpg&ehk=XlwoG3B69x7ALY3Vy6jlkH3QLNf8x8jRn8IjeYNJI5s%3d&risl=&pid=ImgRaw',
  'https://i.pinimg.com/736x/3f/d1/09/3fd1099ff22ae1ce361baebac830d8be.jpg',
  'https://pics.filmaffinity.com/Your_Name-406681275-large.jpg',
  'https://th.bing.com/th/id/R1a5e159256a33cad8e2e52cd0a9d196a?rik=g8aAhAzFXzlNSA&riu=http%3a%2f%2f2.bp.blogspot.com%2f-c1zEvmsYD_o%2fViafFlpReDI%2fAAAAAAAAAJg%2fF2dXaEQP4-0%2fs1600%2fintensamente_poster.jpg&ehk=WxC7OUdK9bO70Y4dEdLn%2bLZAuNUshIa1wmKa59azOMs%3d&risl=&pid=ImgRaw'
];
// final List<Widget> imageSliders = imgList.map((item) => ClipRRect(
//   borderRadius: BorderRadius.circular(25),
//   child: Image.network(item, width: 200,)
//   )
// ).toList();

class CarrouselMovie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height*0.5;
    final width = MediaQuery.of(context).size.width*0.7;
    return CarouselSlider(

      options: CarouselOptions(
        height: height,
        aspectRatio: 2.0,
      ),
      items: imgList
          .map((item) => ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.network(
                item,
                width: width,
                height: height,
                fit: BoxFit.cover,
              )))
          .toList(),
    );
  }
}
