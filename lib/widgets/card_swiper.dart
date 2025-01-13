import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        width: double.infinity,
        height: size.height * 0.5,
        padding: const EdgeInsets.all(30),
        child: Swiper(
          itemCount: 10,
          layout: SwiperLayout.STACK,
          itemWidth: size.width * 0.6,
          itemHeight: size.height * 0.9,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => Navigator.pushNamed(context, 'details',
                  arguments: 'movie-instance'),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: const FadeInImage(
                    fit: BoxFit.cover,
                    placeholder: AssetImage('assets/no-image.jpg'),
                    image: NetworkImage(
                        'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fimage.tmdb.org%2Ft%2Fp%2Foriginal%2Fyp4CDOVpVmNwiPoZKQeFCpW8CFo.jpg&f=1&nofb=1&ipt=09231573f06ba9ff49ad01178017b2561ff12e983a7e1686698d927db6c9e7fa&ipo=images')),
              ),
            );
          },
        ));
  }
}
