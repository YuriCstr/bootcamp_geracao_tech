import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:travel_app/model/location.dart';

class DetailPage extends StatelessWidget {
  final Location location;
  const DetailPage({Key? key, required this.location}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height * .6,
                child: Image.network(location.image, fit: BoxFit.cover)),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: InkWell(
                onTap: () => Navigator.pop(context),
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 20,
                  child: Icon(Icons.arrow_back_ios_new_outlined,
                      color: Colors.black),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "DETAIL",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
            SlidingUpPanel(
              isDraggable: false,
              maxHeight: MediaQuery.of(context).size.height * .46,
              defaultPanelState: PanelState.OPEN,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(35), topRight: Radius.circular(35)),
              panel: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            location.title,
                            style: const TextStyle(
                                fontSize: 28, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Text(
                                "\$ " + location.price.toString(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 18),
                              ),
                              const SizedBox(width: 25),
                              Text(
                                location.rating.toString(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 18),
                              ),
                              const Icon(Icons.star, color: Colors.amber)
                            ],
                          )
                        ],
                      ),
                    ),
                    const Text("Description", style: TextStyle(fontSize: 18)),
                    const SizedBox(height: 12),
                    Text(location.description,
                        style: const TextStyle(fontSize: 16),
                        textAlign: TextAlign.justify),
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
