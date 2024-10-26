import 'package:flutter/material.dart';
import 'package:new_project/package_my_app.dart';
import 'package:url_launcher/url_launcher.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: const Alignment(0.0, 0.0),
            child: SizedBox(
              height: 448,
              width: 400,
              child: Column(children: [
                Container(
                  height: 300,
                  width: 300,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image:
                          DecorationImage(image: AssetImage('assets/AM.png'))),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  IconButton(
                      onPressed: () {
                        launchUrl(Uri(scheme: 'sms', path: '63 992214244'));
                      },
                      icon: const Icon(Icons.sms)),
                  IconButton(
                      onPressed: () {
                        launchUrl(Uri(scheme: 'tel', path: '63 992214244'));
                      },
                      icon: const Icon(Icons.phone)),
                  IconButton(
                    onPressed: () {
                      Uri emailUrl = Uri(
                        scheme: 'mailto',
                        path: 'joaovictoroliveiradourado2007@gmail.com',
                        query: encodeQueryParameters(
                            <String, String>{'subject': 'I AM AM'}),
                      );
                      launchUrl(emailUrl);
                    },
                    icon: const Icon(Icons.email),
                  ),
                  IconButton(
                    onPressed: () {
                      launchUrl(
                        Uri(
                          scheme: 'https',
                          path: 'maps.app.goo.gl/DBGZ6RsNMEK6Hpfm9',
                        ),
                      );
                    },
                    icon: const Icon(Icons.location_on),
                  )
                ]),
              ]),
            ),
          ),
          Align(
            alignment: Alignment(0.0, 0.9),
            child: IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
          ),
        ],
      ),
    );
  }
}
