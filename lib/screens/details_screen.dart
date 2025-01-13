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
              delegate:
                  SliverChildListDelegate([const Text('Prueba numero 1')]))
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
