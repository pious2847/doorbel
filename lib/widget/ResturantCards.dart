import 'package:doorbel/constants/colors.dart';
import 'package:doorbel/models/GoeData.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ResturantCards extends StatefulWidget {
  GeoData restourant;
  
   ResturantCards({super.key,  required this.restourant});

  @override
  // ignore: library_private_types_in_public_api
  _ResturantCardsState createState() => _ResturantCardsState();
}

class _ResturantCardsState extends State<ResturantCards> {

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: [
        Image(
          image: AssetImage(widget.restourant.image),
          height: 120,
          width: MediaQuery.of(context).size.width,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0), 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children:[
              Text(widget.restourant.image, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8,),
              Text(widget.restourant.location, style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w300)),
              const SizedBox(height: 8,),
              Row(
                children: [
                  const Icon(Icons.star_border, color: primcolordark,),
                   const SizedBox(width: 5,),
                    Text(widget.restourant.status, style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w300)),
                ],
              ),
              Text(widget.restourant.status, style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w300)),
            ]
          )
        ),
      ],
    ));
  }
}
