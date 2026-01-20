import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
        
          children: [

            SizedBox(height: 20,),

            Row(
              children: [
            
                Image.asset(
                  'assets/images/me.png',
                  height: 200,
                ),
            
                SizedBox(width: 20,),
            
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 20,
                  children: const [
                    
                    Text(
                      'Manas Beniwal',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
            
                    Text(
                      'Software Developer',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
            
                    Text(
                      'Ocassional Photographer',
                      style: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
            
                  ],
                ),
            
              ],
            ),

            SizedBox(height: 20,),

            Divider(
              thickness: 1,
              color: Colors.white,
            ),

            SizedBox(height: 20,),

            Text(
              "I'm Manas Beniwal. a FLutter Developer in the early stages of my carrer. I'm focused on building a strong foundation throudh experimentation with different projects. My approach is to understand concepts deeply rather that rushing through them Outside of development, I enjoy photography as a way to unwind - just capturing momments when they come along.",
              style: TextStyle(
                fontSize: 19,
              ),
              textAlign: TextAlign.justify,
            ),

            SizedBox(height: 20,),
            
            Divider(
              thickness: 1,
              color: Colors.white,
            ),

            SizedBox(height: 20,),
            
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.code, color: Colors.white),
                  SizedBox(width: 8),
                  Text(
                    'Flutter',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20,),
            
            InkWell(
              onTap: () async {
                final Uri url = Uri.parse(
                  'https://www.instagram.com/png.by.me',
                );
                await launchUrl(url, mode: LaunchMode.externalApplication);
              },
  borderRadius: BorderRadius.circular(12),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.camera_alt, color: Colors.white),
                    SizedBox(width: 8),
                    Text(
                      'Photography',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
