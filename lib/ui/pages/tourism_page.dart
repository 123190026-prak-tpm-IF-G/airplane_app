import 'package:flutter/material.dart';
import '../../data/tourism_place.dart';

class TourismPlacePage extends StatelessWidget {
  const TourismPlacePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tourism Places'),
      ),
      body: ListView.builder(
        itemCount: tourismPlaceList.length,
        itemBuilder: (BuildContext context, int index) {
          final tourismPlace = tourismPlaceList[index];
          return ListTile(
            // leading: Image.asset(tourismPlace.imageAsset),
            leading: Image.network(
              tourismPlace.imageAsset,
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            title: Text(tourismPlace.name),
            subtitle: Text(tourismPlace.location),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TourismPlaceDetailPage(
                    tourismPlace: tourismPlace,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class TourismPlaceDetailPage extends StatelessWidget {
  final TourismPlace tourismPlace;

  const TourismPlaceDetailPage({
    Key? key,
    required this.tourismPlace,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tourismPlace.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image.asset(
            //   tourismPlace.imageAsset,
            //   fit: BoxFit.cover,
            //   width: double.infinity,
            //   height: 200,
            // ),
            Image.network(
              tourismPlace.imageAsset,
              // width: 200,
              // height: 200,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tourismPlace.name,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    tourismPlace.location,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    tourismPlace.description,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Open days: ${tourismPlace.openDays}',
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Open time: ${tourismPlace.openTime}',
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Ticket price: ${tourismPlace.ticketPrice}',
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: tourismPlace.imageUrls.length,
                itemBuilder: (BuildContext context, int index) {
                  final imageUrl = tourismPlace.imageUrls[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        imageUrl,
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
