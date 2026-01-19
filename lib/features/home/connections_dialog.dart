import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ConnectionsDialog extends StatelessWidget {
  const ConnectionsDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content:Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children:[
      
          IconButton(
            icon: Image.asset(
              'assets/icons/github.png',
              width: 32,
              height: 32,
              color: Colors.white,
              colorBlendMode: BlendMode.srcIn,
            ),
            onPressed: () async{
              final Uri url = Uri.parse('https://github.com/MaNaS0708');
              if (!await launchUrl(
                url,
                mode: LaunchMode.externalApplication,)){
                throw 'Could not launch $url';
              }
            },
          ),
      
          IconButton(
            icon: Image.asset(
              'assets/icons/gmail.png',
              width: 32,
              height: 32,
              color: Colors.white,
              colorBlendMode: BlendMode.srcIn,
            ),
            onPressed: () async{
              final Uri url = Uri(
                scheme: 'mailto',
                path: 'manasbeniwal0708@gmail.com',
              );
              if (!await launchUrl(
                url,
                mode: LaunchMode.externalApplication,)){
                throw 'Could not launch $url';
              }
            },
          ),
      
          IconButton(
            icon: Image.asset(
              'assets/icons/linkedin.png',
              width: 32,
              height: 32,
            ),
            onPressed: () async{
              final Uri url = Uri.parse('https://www.linkedin.com/in/manasbeniwal');
              if (!await launchUrl(
                url,
                mode: LaunchMode.externalApplication,)){
                throw 'Could not launch $url';
              }
            },
          ),
      
          IconButton(
            icon: Image.asset(
              'assets/icons/twitter.png',
              width: 32,
              height: 32,
              color: Colors.white,
              colorBlendMode: BlendMode.srcIn,
            ),
            onPressed: () async{
              final Uri url = Uri.parse('https://x.com/ManasBeniwal');
              if (!await launchUrl(
                url,
                mode: LaunchMode.externalApplication,)){
                throw 'Could not launch $url';
              }
            },
          ),
      
          IconButton(
            icon: Image.asset(
              'assets/icons/instagram.png',
              width: 32,
              height: 32,
              color: Colors.white,
              colorBlendMode: BlendMode.srcIn,
            ),
            onPressed: () async{
              final Uri url = Uri.parse('https://www.instagram.com/beniwal.manas/');
              if (!await launchUrl(
                url,
                mode: LaunchMode.externalApplication,)){
                throw 'Could not launch $url';
              }
            },
          ),
      
        ]
      )
    );
  }
}