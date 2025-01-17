import 'package:flutter/material.dart';

//Token themoviedb: https://api.themoviedb.org/3/movie/now_playing?api_key=9f93bbd1b95ab983b75033c421b314cb&language=es-ES&page=1
class CastingCarrousel extends StatelessWidget {
  const CastingCarrousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 180,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'Casting',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext, int index) => const _CastingCard(),
                scrollDirection: Axis.horizontal,
              ),
            ),
          ],
        ));
  }
}

class _CastingCard extends StatelessWidget {
  const _CastingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: 110,
      height: 110,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: const FadeInImage(
              placeholder: AssetImage('assets/no-image.jpg'),
              image: NetworkImage(
                  'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fm.media-amazon.com%2Fimages%2FM%2FMV5BMTQyNDA1NjE5N15BMl5BanBnXkFtZTcwNDEwODgxOA%40%40._V1_.jpg&f=1&nofb=1&ipt=f38842a8d008095c8c5eb108659a7599fcd31d75a7f170df2089581ff2ec7d45&ipo=images'),
              height: 140,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            'actor.name',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
