import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        // useMaterial3: false,
        primarySwatch: Colors.red,
      ),
      // A widget which will be started on application startup
      home: Library(),
    );
  }
}

class Library extends StatefulWidget {
  const Library({super.key});

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Icon(Icons.cast, color: Colors.white, size: 25),
          SizedBox(width: 15),
          Icon(Icons.notifications, color: Colors.white, size: 25),
          SizedBox(width: 15),
          Icon(Icons.search, color: Colors.white, size: 25),
          SizedBox(width: 15),
          Icon(Icons.settings, color: Colors.white, size: 25),
          SizedBox(width: 15),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Profile Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                            "data:image/jpeg;base64,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"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Prasad Gawande",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "@Gawande Gaming • ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: "View channel ",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Horizontal Buttons
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    ElevatedButton.icon(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 111, 111, 111),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      label: Text(
                        "Switch account",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(width: 12),
                    ElevatedButton.icon(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 111, 111, 111),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      label: Text(
                        "Google Account",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(width: 12),
                    ElevatedButton.icon(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 111, 111, 111),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      label: Text(
                        "Turn on Incognito",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 24),

            // History Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "History",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  OutlinedButton(
                    style: ButtonStyle(
                      side: MaterialStateProperty.all(
                        BorderSide(color: Colors.grey),
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "View all",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 16),

            // History Videos
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 16),
                children: [
                  // Video 1
                  Container(
                    width: 160,
                    margin: EdgeInsets.only(right: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 90,
                          width: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey[800],
                          ),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Container(
                                  color: Colors.grey[700],
                                  child: Center(
                                    child: Icon(Icons.play_circle_fill,
                                        color: Colors.white, size: 40),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 4,
                                right: 4,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 4, vertical: 2),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Tom and Jerry | Tom & Jerry in full Screen",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 4),
                        Text(
                          "WB Kids - 83 crore views- 3 years ago",
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),

                  // Video 2
                  Container(
                    width: 160,
                    margin: EdgeInsets.only(right: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 90,
                          width: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey[800],
                          ),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Container(
                                  color: Colors.grey[700],
                                  child: Center(
                                    child: Icon(Icons.play_circle_fill,
                                        color: Colors.white, size: 40),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 4,
                                right: 4,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 4, vertical: 2),
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Text(
                                    "1:57:11",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "EP-69 The End Of Biggest Mafia In Los-Santos | GTA-5",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Tecno Gamerz 89 crore views 2 years  ago",
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),

                  // Video 3
                  Container(
                    width: 160,
                    margin: EdgeInsets.only(right: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 90,
                          width: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey[800],
                          ),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Container(
                                  color: Colors.grey[700],
                                  child: Center(
                                    child: Icon(Icons.play_circle_fill,
                                        color: Colors.white, size: 40),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Shorts",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 4),
                        Text(
                          "5 watched",
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 24),

            // Playlists Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Playlists",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.add, color: Colors.white, size: 24),
                      SizedBox(width: 16),
                      OutlinedButton(
                        style: ButtonStyle(
                          side: MaterialStateProperty.all(
                            BorderSide(color: Colors.grey),
                          ),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "View all",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 16),

            // Playlists
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 16),
                children: [
                  // Liked videos playlist
                  Container(
                    width: 160,
                    margin: EdgeInsets.only(right: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 90,
                          width: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey[800],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.thumb_up,
                                  color: Colors.white, size: 30),
                              SizedBox(height: 8),
                              Text(
                                "1,698",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Liked videos",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Private",
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
                    ),
                  ),

                  // Watch Later playlist
                  Container(
                    width: 160,
                    margin: EdgeInsets.only(right: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 90,
                          width: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey[800],
                          ),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Container(
                                  color: Colors.grey[700],
                                ),
                              ),
                              Positioned(
                                bottom: 8,
                                right: 8,
                                child: Icon(Icons.access_time,
                                    color: Colors.white, size: 20),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Watch Later",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Private",
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
                    ),
                  ),

                  // Another playlist
                  Container(
                    width: 160,
                    margin: EdgeInsets.only(right: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 90,
                          width: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey[800],
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "fav",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Public • 1",
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 24),

            // Your videos section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Icon(Icons.play_arrow, color: Colors.white, size: 24),
                  SizedBox(width: 16),
                  Text(
                    "Your videos",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 16),

            // Downloads section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.download, color: Colors.white, size: 24),
                      SizedBox(width: 16),
                      Text(
                        "Downloads",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Icon(Icons.check_circle, color: Colors.white, size: 24),
                ],
              ),
            ),

            SizedBox(height: 16),

            // Purchases section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Icon(Icons.shopping_bag, color: Colors.white, size: 24),
                  SizedBox(width: 16),
                  Text(
                    "Budgets",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),
            Container(
              height: 0.5,
              width: double.infinity,
              color: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Icon(Icons.shopping_bag, color: Colors.white, size: 24),
                  SizedBox(width: 16),
                  Text(
                    "Your Movies",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Icon(Icons.shopping_bag, color: Colors.white, size: 24),
                  SizedBox(width: 16),
                  Text(
                    "Get Youtube Premium",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
