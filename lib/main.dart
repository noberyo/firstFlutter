import 'package:flutter/material.dart';

void main() {
  runApp(
      // const Center(
      //   child: Text(
      //     'Hello, world!',
      //     textDirection: TextDirection.ltr
      //   )
      // ),
      const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                backgroundColor: const Color.fromARGB(255, 240, 240, 246),
                title: const Text('STUDY FLUTTER',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color.fromARGB(250, 0, 80, 120)))),
            body: const TweetTile()));
  }
}

class TweetTile extends StatelessWidget {
  const TweetTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://pbs.twimg.com/profile_images/1574198426593792000/f1Ba28Dm_400x400.jpg')),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Text(
                    'なんだかんだ @ベンゼマ',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(width: 8),
                  Text('2024/07/01', style: TextStyle(fontSize: 16))
                ],
              ),
              const SizedBox(height: 4),
              const Text('コパアメリカとユーロと大忙し'),
              const SizedBox(height: 4),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_border),
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    iconSize: 48,
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_border),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
