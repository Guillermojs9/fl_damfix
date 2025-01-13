import 'package:flutter/material.dart';

class MovieSlider extends StatelessWidget {
  const MovieSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 350,
        //color: const Color.fromARGB(255, 54, 222, 244),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'Películas favoritas',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const _MoviePoster();
                },
              ),
            )
          ],
        ));
  }
}

class _MoviePoster extends StatelessWidget {
  const _MoviePoster();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 100,
      //color: Colors.green,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          //Cartel
          Builder(builder: (context) {
            return GestureDetector(
              onTap: () => Navigator.pushNamed(context, 'details',
                  arguments: 'movie-instance'),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: const FadeInImage(
                    placeholder: AssetImage('assets/no-image.jpg'),
                    image: NetworkImage(
                        'https://www.horrormovietalk.com/wp-content/uploads/2022/10/Hellraiser-2022-movie-poster-1-scaled.jpg'),
                    width: double.infinity,
                    height: 190,
                    fit: BoxFit.cover),
              ),
            );
          }),
          const SizedBox(
            height: 8,
          ),
          //Titulo
          const Text(
            'Hellraiser 2022',
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
