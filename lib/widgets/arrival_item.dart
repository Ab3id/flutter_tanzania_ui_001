import 'package:flutter/material.dart';

class ArrivalItem extends StatelessWidget {
  final String image;
  const ArrivalItem({
    super.key, required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width * 0.7,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image:  DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover)),
            child: const Text(''),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Avocado from somewhere',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'TSH 12.08',
            style: TextStyle(color: Colors.pink[600]),
          )
        ],
      ),
    );
  }
}
