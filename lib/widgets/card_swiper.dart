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
              onTap: () => Navigator.pushNamed(context, 'details', arguments: 'movie-instance'),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: const FadeInImage(
                    fit: BoxFit.cover,
                    placeholder: AssetImage('assets/no-image.jpg'),
                    image: NetworkImage(
                        'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.kolpaper.com%2Fwp-content%2Fuploads%2F2024%2F11%2FChill-Guy-Wallpaper-3.jpg&f=1&nofb=1&ipt=4240395fc941735975f02aee578ae80390e9ddb06c9b97cc14f3ff5484da25fc&ipo=images')),
              ),
            );
          },
        ));
  }
}
