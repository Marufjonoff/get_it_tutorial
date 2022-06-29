import 'package:flutter/material.dart';
import 'package:get_it_tutorial/domain/meme_controller.dart';
import 'package:get_it_tutorial/domain/models/meme.dart';
import 'package:get_it_tutorial/locator.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  _HomePageViewState createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  Meme? visibleMeme;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: visibleMeme != null
            ? Center(
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [

                  Text(
                    visibleMeme != null ? "Category ${visibleMeme!.category}" : "Category is not",
                    style: const TextStyle(fontSize: 36),
                  ),

                  const SizedBox(height: 8),

                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child: visibleMeme != null ? Image.network(visibleMeme!.imageUrl) : const Text("Image not found", style: TextStyle(color: Colors.white),),
                  ),

                  const SizedBox(height: 8),

                  visibleMeme != null ? Text("Caption: ${visibleMeme!.caption}") : const Text("Not found caption"),
                ],
              ),
            ),
          ),
        )
            : const Center(child: Text("No Meme loaded yet")),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.skip_next),
        onPressed: () async {
          // TODO 5: Locate the service with GetIt and call getNextMeme
          Meme meme = await locator.get<MemeDomainController>().getNextMeme();

          // TODO 7: Use setState to update the visibleMeme
          setState((){
            visibleMeme = meme;
          });
        },
      ),
    );
  }
}