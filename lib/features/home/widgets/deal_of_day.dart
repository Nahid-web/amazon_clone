import 'package:flutter/material.dart';

class DealOfDay extends StatelessWidget {
  const DealOfDay({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 10, top: 15),
          child: const Text(
            'Deal of the day',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        Image.network(
          "https://media.istockphoto.com/id/947033786/photo/closeup-of-soldering-of-electronic-circuit-board.jpg?s=1024x1024&w=is&k=20&c=SjEVCNFOJ7w3LZtC4tsgDFyL2XKFk1nOkVvGULiQP4Q=",
          height: 235,
          fit: BoxFit.fitHeight,
        ),
        Container(
          padding: const EdgeInsets.only(left: 15),
          alignment: Alignment.topLeft,
          child: const Text(
            "\$100",
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 15, top: 5, right: 40),
          child: const Text(
            'Nahid',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Image.network(
                'https://media.istockphoto.com/id/1188486536/photo/ram.jpg?s=1024x1024&w=is&k=20&c=Cn-lZfmY9w7AIDvojmvUyi3LoG4Aw-XFol0uwGO6B-s=',
                height: 100,
                width: 100,
                fit: BoxFit.fitWidth,
              ),
              Image.network(
                'https://media.istockphoto.com/id/1188486536/photo/ram.jpg?s=1024x1024&w=is&k=20&c=Cn-lZfmY9w7AIDvojmvUyi3LoG4Aw-XFol0uwGO6B-s=',
                height: 100,
                width: 100,
                fit: BoxFit.fitWidth,
              ),
              Image.network(
                'https://media.istockphoto.com/id/1188486536/photo/ram.jpg?s=1024x1024&w=is&k=20&c=Cn-lZfmY9w7AIDvojmvUyi3LoG4Aw-XFol0uwGO6B-s=',
                height: 100,
                width: 100,
                fit: BoxFit.fitWidth,
              ),
              Image.network(
                'https://media.istockphoto.com/id/1188486536/photo/ram.jpg?s=1024x1024&w=is&k=20&c=Cn-lZfmY9w7AIDvojmvUyi3LoG4Aw-XFol0uwGO6B-s=',
                height: 100,
                width: 100,
                fit: BoxFit.fitWidth,
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15).copyWith(left: 15),
          alignment: Alignment.topLeft,
          child: Text(
            'See all deals',
            style: TextStyle(color: Colors.cyan[800]),
          ),
        )
      ],
    );
  }
}
