import 'package:flutter/material.dart';
import 'package:flutter_travel_ui_starter/models/destination_model.dart';
import 'package:flutter_travel_ui_starter/screens/destination_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DestinationCard extends StatelessWidget {
  final Destination destination;

  DestinationCard(this.destination);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DestinationScreen(destination),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.all(10),
        width: 210,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              bottom: 10,
              child: Container(
                height: 120,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Text(
                        '${destination.activities.length} activities',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        destination.description,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                  ),
                ),
              ),
            ),
            Stack(
              children: [
                Container(
                  child: Hero(
                    tag: '${destination.imageUrl}',
                    child: ClipRRect(
                      child: Image(
                        image: AssetImage(destination.imageUrl),
                        height: 180,
                        width: 180,
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0.0, 2.0),
                        blurRadius: 6.0,
                      )
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Positioned(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        destination.city,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.paperPlane,
                            size: 15,
                            color: Colors.white70,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            destination.country,
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  left: 10,
                  bottom: 10,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
