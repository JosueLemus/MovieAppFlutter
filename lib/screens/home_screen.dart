import 'package:flutter/material.dart';
import 'package:movie_flutter/common/carrousel_movie.dart';
class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff213140),
      appBar: AppBar(
        backgroundColor: Color(0xff213140),
        actions: [Icon(Icons.search)],
        elevation: 0,
        title: Text('Discover', style: TextStyle(color: Colors.white),)),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
        ),
        
        child: Column(
          children: [
            SizedBox(height: 30,),
            Text('Now Playing', style: TextStyle(color: Color(0xff213140), fontWeight: FontWeight.w600, fontSize: 20),),
            SizedBox(height: 20,),
            CarrouselMovie(),
            Container(
              padding: EdgeInsets.only(left: 10,top: 30),
              width: double.infinity,
              child: Text('All movies', style: TextStyle(color: Color(0xff213140), fontWeight: FontWeight.w600, fontSize: 20))),

            Container(
              height: MediaQuery.of(context).size.height*0.18,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
  _imageMovieBottom('https://m.media-amazon.com/images/M/MV5BNDg3MmI1ZDYtMDZjYi00ZWRlLTk4NzEtZjY4Y2U0NjE5YmRiXkEyXkFqcGdeQXVyNzAxMjE1NDg@._V1_UY1200_CR92,0,630,1200_AL_.jpg',context),
  _imageMovieBottom('https://k37.kn3.net/554227415.jpg',context),
  _imageMovieBottom('https://th.bing.com/th/id/Rf2e73465ab3568fabdfbfd0059500dd2?rik=PhQcPB5uvjKRWw&riu=http%3a%2f%2fes.web.img3.acsta.net%2fpictures%2f14%2f07%2f28%2f12%2f27%2f483839.jpg&ehk=XlwoG3B69x7ALY3Vy6jlkH3QLNf8x8jRn8IjeYNJI5s%3d&risl=&pid=ImgRaw',context),
  _imageMovieBottom('https://i.pinimg.com/736x/3f/d1/09/3fd1099ff22ae1ce361baebac830d8be.jpg',context),
  _imageMovieBottom('https://pics.filmaffinity.com/Your_Name-406681275-large.jpg',context),
  _imageMovieBottom('https://th.bing.com/th/id/R1a5e159256a33cad8e2e52cd0a9d196a?rik=g8aAhAzFXzlNSA&riu=http%3a%2f%2f2.bp.blogspot.com%2f-c1zEvmsYD_o%2fViafFlpReDI%2fAAAAAAAAAJg%2fF2dXaEQP4-0%2fs1600%2fintensamente_poster.jpg&ehk=WxC7OUdK9bO70Y4dEdLn%2bLZAuNUshIa1wmKa59azOMs%3d&risl=&pid=ImgRaw',context),
                ],
              ),
            )
            

          ],
        ),
      ),
    );
  }
  Widget _imageMovieBottom(String uriImage, BuildContext context){
    final height = MediaQuery.of(context).size.height*0.18;
    final width = MediaQuery.of(context).size.width *0.3;
    return Padding(
      padding: const EdgeInsets.only(right: 10, top: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(uriImage, height: height, width: width,fit: BoxFit.cover,)
        ),
    );

  }
}