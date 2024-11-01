import 'package:flutter/material.dart';
import 'package:new_project/custom_themes/ready_themes.dart';
import 'package:new_project/ready_themes.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ,
      appBar: AppBar(
        backgroundColor: ihnmaimsColors['voidBlack'],
        foregroundColor: ihnmaimsColors['dispairYellow'],
        title: const Text(
          'Allied Mastecomputer',
        ),
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
