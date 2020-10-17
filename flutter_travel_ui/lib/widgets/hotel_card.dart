import 'package:flutter/material.dart';
import 'package:flutter_travel_ui_starter/models/hotel_model.dart';

class HotelCard extends StatelessWidget {
  final Hotel hotel;

  HotelCard(this.hotel);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 300,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            bottom: 10,
            child: Container(
              height: 120,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      hotel.name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      hotel.address,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      '\$${hotel.price} / night',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            child: ClipRRect(
              child: Image(
                image: AssetImage(hotel.imageUrl),
                height: 180,
                width: 280,
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20),
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
        ],
      ),
    );
  }
}
