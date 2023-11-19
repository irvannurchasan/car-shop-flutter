import 'package:car_shop/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,//[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset(
                  'lib/images/logo mobil.jpeg',
                  height: 240,
                ),
              ),
        
              const SizedBox(height: 48),
        
              Text(
                'Mukhlis Car',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
        
                ),
              ),
        
              const SizedBox(height: 24),
        
              // sub title
              Text(
                'Chose your fav car now',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 48),
              // button start
              GestureDetector(
                onTap: () => Navigator.push(context,
                 MaterialPageRoute(
                  builder: (context) => Homepage(),
                 ),
                ),

                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(25),
                  child: const Center(
                    child: Text(
                      'shop now',
                      style: TextStyle(
                        color:  Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        ),
                        
              
                      ),
              
              
                  )
                  
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}