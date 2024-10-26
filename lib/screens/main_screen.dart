import 'package:flutter/material.dart';
import 'package:new_project/functions.dart';
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
      appBar: AppBar(
        backgroundColor: ,
        title: const Text('UserName'),
      ),
      body: Stack(children: [
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
                    image: DecorationImage(image: AssetImage('assets/AM.png'))),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                IconButton(
                    onPressed: () {
                      launchUrl(Uri(scheme: 'sms', path: '5563992214244'));
                    },
                    icon: const Icon(Icons.sms)),
                IconButton(
                    onPressed: () {
                      launchUrl(Uri(scheme: 'tel', path: '5563992214244'));
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
      ]),
    );
  }
}
