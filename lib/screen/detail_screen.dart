import 'package:flutter/material.dart';
import 'package:supertomic/theme/colors.dart';
import 'package:supertomic/theme/style.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget headerComic() {
      return Container(
        margin: const EdgeInsets.only(left: 16, top: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset('assets/images/arrow_back.png', width: 26)),
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
                      image: const DecorationImage(
                        image: AssetImage(
                            'assets/images/comics/detective_comics.jpg'),
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
                                    'The Dark Knight',
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: getComicBookRegular18(
                                        color: Colors.black),
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  'Rayhan',
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
                                    // comicData.rating.toString(),
                                    '4.7',
                                    style: getComicBookRegular14(
                                        color: Colors.black),
                                  ),
                                ]),
                                Image.asset(
                                    // comicData.publisherImage,
                                    'assets/images/dc_logo.png',
                                    width: 40,
                                    height: 50),
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
                Text('Batman ', style: getHelveticaBold18(color: Colors.black)),
                Text('(Bruce Wayne) ',
                    style: getHelveticaRegular18(color: Colors.grey)),
              ],
            )
          ],
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        body: headerComic(),
      ),
    );
  }
}
