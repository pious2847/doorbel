import 'package:dio/dio.dart';
import 'package:doorbel/services/google_API.dart';
import 'package:doorbel/widget/ResturantCards.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Doorbel'),
      ),
      body: Container(),
    );
  }
}
