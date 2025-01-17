import 'package:fl_damfix/widgets/casting_carrousel.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const _CustomAppbar(),
          SliverList(
              delegate: SliverChildListDelegate([
            const _InfoPelicula(),
            const _Overview(),
            const CastingCarrousel()
          ]))
        ],
      ),
    );
  }
}

class _CustomAppbar extends StatelessWidget {
  const _CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 200,
      floating: false,
      pinned: true,
      snap: false,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: const EdgeInsets.all(0),
        title: Container(
          width: double.infinity,
          color: Colors.black26,
          alignment: Alignment.bottomCenter,
          child: const Text(
            'pelicula.titulo',
            style: TextStyle(color: Colors.red),
          ),
        ),
        background: const FadeInImage(
            fit: BoxFit.cover,
            placeholder: AssetImage('assets/loading.gif'),
            image: NetworkImage(
                'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.servimg.com%2Fu%2Ff84%2F20%2F37%2F41%2F32%2Fqjexx410.jpg&f=1&nofb=1&ipt=aa8723fd04c58f637ab7ec06087bfbb8625fd4ff7f64420d740837233825d320&ipo=images')),
      ),
    );
  }
}

class _InfoPelicula extends StatelessWidget {
  const _InfoPelicula({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: const FadeInImage(
                  placeholder: AssetImage('assets/no-image.jpg'),
                  image: NetworkImage(
                      'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fpreview.redd.it%2Fnew-official-poster-for-hellraiser-2022-by-creepy-duck-v0-itwhqs7ssev91.jpg%3Fauto%3Dwebp%26s%3Dea1f076282295f5200b0dc27519a70e14a5cfe15&f=1&nofb=1&ipt=f3d9f7559bc84e5f8bb784f2a248c7279ba17bbc6e56678c6d2b400481b37dcf&ipo=images'),
                  height: 250,
                )),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'pelicula.titulo',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 10),
                Text(
                  'pelicula.año',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                Text(
                  'pelicula.director',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                Row(
                  children: [
                    const Icon(Icons.star, size: 25, color: Colors.amber),
                    const SizedBox(width: 10),
                    Text(
                      'pelicula.voteAverage',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                )
              ],
            )
          ],
        ));
  }
}

class _Overview extends StatelessWidget {
  const _Overview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Text(
              'Consequat veniam minim magna aliquip. Eu nulla cupidatat aute adipisicing quis quis ullamco proident ut. Laboris adipisicing ut consequat adipisicing exercitation eiusmod enim cillum. Laboris commodo irure veniam ullamco. Excepteur magna dolore aliquip veniam sunt consectetur aliquip enim sint veniam. Minim Lorem nostrud veniam quis veniam ut officia anim fugiat proident exercitation labore irure nostrud. Anim deserunt aute veniam esse consectetur amet cillum velit minim sit do voluptate.',
              textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          )
        ],
      ),
    );
  }
}
