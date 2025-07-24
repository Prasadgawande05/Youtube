import 'package:flutter/material.dart';

class Subscription extends StatefulWidget {
  const Subscription({super.key});

  @override
  State<Subscription> createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 80,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/Youtube_logo.png"),
        ),
        title: const Text(
          "Youtube",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
        actions: const [
          Icon(Icons.cast, size: 30, color: Colors.white),
          SizedBox(width: 10),
          Icon(Icons.notifications, size: 30, color: Colors.white),
          SizedBox(width: 10),
          Icon(Icons.search, size: 30, color: Colors.white),
          SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(width: 16),
                    buildProfile(
                      imageUrl:
                          "https://images.unsplash.com/photo-1644077633176-c7a4f8e35811?w=600&auto=format&fit=crop&q=60",
                      label: "The King",
                    ),
                    const SizedBox(width: 16),
                    buildProfile(
                      imageUrl:
                          "https://images.unsplash.com/photo-1686587847397-ab5882b8d34f?w=600&auto=format&fit=crop&q=60",
                      label: "MR. Hero",
                    ),
                    const SizedBox(width: 16),
                    buildProfile(
                      imageUrl:
                          "https://plus.unsplash.com/premium_photo-1668902221232-5908bec128f9?w=600&auto=format&fit=crop&q=60",
                      label: "L-Series..",
                    ),
                    const SizedBox(width: 16),
                    buildProfile(
                      imageUrl:
                          "https://images.unsplash.com/photo-1580031207852-19e3e15be5f1?q=80&w=694&auto=format&fit=crop",
                      label: "Narendra..",
                    ),
                    const SizedBox(width: 16),
                    buildProfile(
                      imageUrl:
                          "https://plus.unsplash.com/premium_photo-1661963629241-52c812d5c7f8?w=600&auto=format&fit=crop&q=60",
                      label: "Ayodhyaa..",
                    ),
                    const SizedBox(width: 16),
                    buildProfile(
                      imageUrl:
                          "https://media.istockphoto.com/id/501944551/photo/news.webp?a=1&b=1&s=612x612&w=0&k=20&c=jjAH79KoVj2m_Wh1jwAx1s5qMBByb4coTJ8g-YX6r_Y=",
                      label: "Abp News..",
                    ),
                    const SizedBox(width: 16),
                    buildProfile(
                      imageUrl:
                          "https://media.istockphoto.com/id/1393796813/photo/friends-playing-computer-game.webp?a=1&b=1&s=612x612&w=0&k=20&c=Q4_QtPTEb5kZL0wMLyFH-MXijSUY7DNQ20igcmbNKD0=",
                      label: "The Gamers..",
                    ),
                    const SizedBox(width: 16),
                    buildProfile(
                      imageUrl:
                          "https://images.unsplash.com/photo-1612772992614-bc2c2a2c3362?w=600&auto=format&fit=crop&q=60",
                      label: "The designers..",
                    ),
                    const SizedBox(width: 16),
                    buildProfile(
                      imageUrl:
                          "https://images.unsplash.com/photo-1460661419201-fd4cecdf8a8b?w=600&auto=format&fit=crop&q=60",
                      label: "The Artists..",
                    ),
                    const SizedBox(width: 16),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                        ),
                        onPressed: () {},
                        child: const Text("All",
                            style: TextStyle(color: Colors.black)),
                      ),
                      const SizedBox(width: 12),
                      ElevatedButton(
                          style: _chipStyle(),
                          onPressed: () {},
                          child: const Text("Today",
                              style: TextStyle(color: Colors.white))),
                      const SizedBox(width: 12),
                      ElevatedButton(
                          style: _chipStyle(),
                          onPressed: () {},
                          child: const Text("Videos",
                              style: TextStyle(color: Colors.white))),
                      const SizedBox(width: 12),
                      ElevatedButton(
                          style: _chipStyle(),
                          onPressed: () {},
                          child: const Text("Shorts",
                              style: TextStyle(color: Colors.white))),
                      const SizedBox(width: 12),
                      ElevatedButton(
                          style: _chipStyle(),
                          onPressed: () {},
                          child: const Text("Live",
                              style: TextStyle(color: Colors.white))),
                      const SizedBox(width: 12),
                      ElevatedButton(
                          style: _chipStyle(),
                          onPressed: () {},
                          child: const Text("Podcasts",
                              style: TextStyle(color: Colors.white))),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(color: Colors.grey.shade300),
                height: 250,
                width: double.infinity,
                child: Image.network(
                  "https://images.unsplash.com/photo-1596791666295-722676606996?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fG5hdHVyZSUyMHNvbmdzJTIwd2l0aCUyMGJlc3QlMjBnaXJsJTIwZ3VpdGFyfGVufDB8fDB8fHww",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1742853288141-b95880a1c5ea?w=600&auto=format&fit=crop&q=60"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Nature with best songs",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600)),
                          const SizedBox(height: 4),
                          const Text(
                              "Nature with best songs  #energy #nature #music",
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 14),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis),
                          const Text("songs · 1.2M views",
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 12)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              SizedBox(
                                height: 70,
                                child: Image(
                                  image: NetworkImage(
                                      "https://img.pikbest.com/origin/09/21/29/70epIkbEsTFJf.png!sw800"),
                                ),
                              ),
                              Text("Shorts ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w900)),
                              Spacer(),
                              Icon(Icons.more_vert, color: Colors.white),
                            ],
                          ),
                          const SizedBox(height: 10),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                _shortsCard(
                                    "https://images.unsplash.com/photo-1516450137517-162bfbeb8dba?w=600&auto=format&fit=crop&q=60"),
                                const SizedBox(width: 10),
                                _shortsCard(
                                    "https://plus.unsplash.com/premium_photo-1681503973674-ca910d68dbff?q=80&w=687&auto=format&fit=crop"),
                                const SizedBox(width: 10),
                                _shortsCard(
                                    "https://plus.unsplash.com/premium_photo-1682920140924-d8b5db318d97?w=600&auto=format&fit=crop&q=60"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  ButtonStyle _chipStyle() {
    return ElevatedButton.styleFrom(
      backgroundColor: const Color.fromARGB(255, 40, 40, 40),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    );
  }

  Widget buildProfile({required String imageUrl, required String label}) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(800),
            image: DecorationImage(
                image: NetworkImage(imageUrl), fit: BoxFit.cover),
          ),
        ),
        const SizedBox(height: 6),
        Text(label, style: const TextStyle(color: Colors.white)),
      ],
    );
  }

  Widget _shortsCard(String imageUrl) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image.network(
        imageUrl,
        width: 185,
        height: 330,
        fit: BoxFit.cover,
      ),
    );
  }
}
