import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
          title: const Text(
            "3 D   V I E W  I N  F L U T T E R",
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
          ),
        ),
        body: const SizedBox(
          child: ModelViewer(
            src: 'assets/3d/ImageToStl.com_002-ug-2.glb',
            backgroundColor: Color.fromARGB(0xFF, 0xEE, 0xEE, 0xEE),
            alt: 'A 3D model of an astronaut',
            ar: true,
            arModes: ['scene-viewer', 'webxr', 'quick-look'],
            autoRotate: true,
            disableZoom: false,
          ),
        ));
  }
}
