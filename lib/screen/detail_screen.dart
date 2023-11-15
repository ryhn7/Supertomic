import 'package:flutter/material.dart';
import 'package:supertomic/data/model/comic_model.dart';
import 'package:supertomic/theme/colors.dart';
import 'package:supertomic/theme/style.dart';

class DetailScreen extends StatelessWidget {
  final ComicModel comicData;
  const DetailScreen(this.comicData, {super.key});

  @override
  Widget build(BuildContext context) {
    Widget headerComic() {
      return Container(
        margin: const EdgeInsets.only(left: 16, top: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child:
                        Image.asset('assets/images/arrow_back.png', width: 26)),
                Stack(children: [
                  Image.asset(
                    'assets/images/custom_background_button.png',
                    width: 70,
                  ),
                  const Positioned.fill(
                    bottom: 5,
                    child: Align(
                      alignment: Alignment.center,
                      child: FavoriteButton(),
                    ),
                  ),
                ])
              ],
            ),
            const SizedBox(height: 32),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 260, // Define the height
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(16), // Set the border radius
                      image: DecorationImage(
                        image: AssetImage(comicData.coverImage),
                        fit: BoxFit
                            .cover, // This will ensure the image covers the container
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                    flex: 1,
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxHeight: 260),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 170,
                                  child: Text(
                                    comicData.title,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: getComicBookRegular18(
                                        color: Colors.black),
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  comicData.author,
                                  style:
                                      getComicBookRegular18(color: Colors.grey),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(children: [
                                  Image.asset('assets/images/star.png',
                                      width: 20, height: 20),
                                  const SizedBox(width: 4),
                                  Text(
                                    comicData.rating.toString(),
                                    style: getComicBookRegular14(
                                        color: Colors.black),
                                  ),
                                ]),
                                Image.asset(comicData.publisherImage,
                                    width: 40, height: 50),
                              ],
                            ),
                            const SizedBox(height: 12),
                            Text(
                              'Also Read',
                              style: getComicBookRegular14(color: Colors.black),
                            ),
                            const SizedBox(height: 12),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('6000 Deluxe Edition',
                                    style: getComicBookRegular14(
                                        color: celestialBlue)),
                                Icon(Icons.arrow_forward_ios,
                                    size: 16, color: celestialBlue)
                              ],
                            ),
                            const Divider(thickness: 0.5, color: Colors.grey),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('7000 Deluxe Edition',
                                    style: getComicBookRegular14(
                                        color: celestialBlue)),
                                Icon(Icons.arrow_forward_ios,
                                    size: 16, color: celestialBlue)
                              ],
                            ),
                            const Divider(thickness: 0.5, color: Colors.grey),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('8000 Deluxe Edition',
                                    style: getComicBookRegular14(
                                        color: celestialBlue)),
                                Icon(Icons.arrow_forward_ios,
                                    size: 16, color: celestialBlue)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ))
              ],
            ),
            const SizedBox(height: 32),
            Text('FEATURED CHARACTERS',
                style: getGeneraBoldStyle20(color: Colors.black)),
            const SizedBox(height: 8),
            Row(
              children: [
                Text(comicData.mainCharacter,
                    style: getHelveticaBold18(color: Colors.black)),
                const SizedBox(width: 4),
                Text('(${comicData.alias})',
                    style: getHelveticaRegular18(color: Colors.grey)),
              ],
            )
          ],
        ),
      );
    }

    Widget synopsisComic() {
      return Container(
          margin: const EdgeInsets.only(top: 16),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset('assets/images/custom_card.png'),
                  Container(
                    margin: const EdgeInsets.only(top: 34, left: 40),
                    child: Text(
                      'SYNOPSIS',
                      style: getHelveticaExtraBold16(color: Colors.black),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 62, left: 40, right: 34),
                    child: Text(comicData.synopsis,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        style: getChamsBlack14(color: Colors.black)),
                  ),
                  Positioned(
                      right: 50, // Positions the container to the right end
                      bottom: 40,
                      child: Image.asset('assets/images/custom_dropdown.png',
                          width: 30))
                ],
              ),
              Container(
                  margin: const EdgeInsets.only(bottom: 24),
                  child: InkWell(
                    onTap: () => {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text('You are reading now'),
                          duration: Duration(seconds: 2)))
                    },
                    child: Stack(
                      children: [
                        Image.asset('assets/images/custom_button.png'),
                        Container(
                            margin: const EdgeInsets.only(top: 26, left: 90),
                            child: Text('READ NOW',
                                style: getComicBookRegular28(
                                    color: Colors.white))),
                      ],
                    ),
                  )),
            ],
          ));
    }

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [headerComic(), synopsisComic()],
          ),
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        },
        child: Image.asset(
            isFavorite
                ? 'assets/images/button_favorite_active.png'
                : 'assets/images/button_favorite.png',
            width: 20));
  }
}
