import 'package:edspert_flutter_16/widgets/social_button.dart';
import 'package:edspert_flutter_16/widgets/timeline_content.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:timeline_tile/timeline_tile.dart';

class Resume extends StatelessWidget {
  const Resume({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Resume',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ava
          Center(
            child: Column(
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 112,
                  child: CircleAvatar(
                    radius: 110,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/fath.png'),
                  ),
                ),
                const Text(
                  'Fath Hadzami',
                  style: TextStyle(
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  'Web Developer',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialButton(
                      url: 'https://www.linkedin.com/in/fath-h-430106283/',
                      icon: FontAwesomeIcons.linkedin,
                      bgColor: Colors.blue.shade900,
                    ),
                    const SizedBox(width: 5),
                    SocialButton(
                      url: 'https://wa.me/6828568888347',
                      icon: FontAwesomeIcons.whatsapp,
                      bgColor: Colors.green.shade500,
                    ),
                    const SizedBox(width: 5),
                    SocialButton(
                      url: 'https://instagram.com/fath.hadzami',
                      icon: FontAwesomeIcons.instagram,
                      bgColor: Colors.orange.shade900,
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 30),

          // Edu
          const Center(
            child: Text(
              "Education",
              style: TextStyle(
                color: Colors.indigo,
                fontSize: 18,
              ),
            ),
          ),
          const Divider(color: Colors.indigo),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: SizedBox(
                  height: 50,
                  child: TimelineTile(
                    endChild: const Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Gunadarma University',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('Informatics Engineering'),
                        ],
                      ),
                    ),
                    beforeLineStyle:
                        const LineStyle(color: Colors.indigo, thickness: 2),
                    isLast: true,
                    indicatorStyle: const IndicatorStyle(
                      color: Colors.indigo,
                      width: 15,
                    ),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 24),

          // Edu
          const Center(
            child: Text(
              "Job Experience",
              style: TextStyle(
                color: Colors.indigo,
                fontSize: 18,
              ),
            ),
          ),
          const Divider(color: Colors.indigo),
          const Column(
            children: [
              TimelineContent(
                title: 'PT Mitracomm Ekasarana',
                description: 'Web Developer',
                subdescription: '2022 - Present',
                isFirst: true,
                isLast: false,
              ),
              TimelineContent(
                title: 'PT Mitra Proteksi Madani',
                description: 'IT Officer',
                subdescription: '2020 - 2021',
                isFirst: false,
                isLast: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
