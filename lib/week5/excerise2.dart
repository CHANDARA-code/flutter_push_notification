import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ProfileCardScreen(),
    );
  }
}

class ProfileCardScreen extends StatelessWidget {
  const ProfileCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFF6B6B),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {},
        ),
        title: const Text(
          'Profile Card Design',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ProfileCard(
            profile:
            'https://www.nylabone.com/-/media/project/oneweb/nylabone/images/dog101/10-intelligent-dog-breeds/golden-retriever-tongue-out.jpg?h=430&w=710&hash=7FEB820D235A44B76B271060E03572C7',
            imageUrl:
            'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/6b/27/58/caption.jpg?w=1200&h=-1&s=1',
            name: 'Leo Venture',
            username: 'Posted 2 hour ago',
            bio: 'This was one of the most ',

            followingCount: 'breathtaking',
            followersCount: 'sunsets',
          ),
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  final String profile;
  final String imageUrl;
  final String name;
  final String username;
  final String bio;
  final String followingCount;
  final String followersCount;

  const ProfileCard({
    Key? key,
    required this.profile,
    required this.imageUrl,
    required this.name,
    required this.username,
    required this.bio,
    required this.followingCount,
    required this.followersCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 400),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header image with overlay text
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                // Header image
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xFF4FC3F7), Color(0xFF29B6F6)],
                          ),
                        ),
                        child: const Center(
                          child: Icon(Icons.image_not_supported,
                              size: 70, color: Colors.white),
                        ),
                      );
                    },
                  ),
                ),

                // Overlayed title text (centered near top)
                // Profile avatar overlapping the header (bottom-left)
                Positioned(
                  bottom: 4,
                  left: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Sunset in Bali',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              blurRadius: 6,
                              color: Colors.black54,
                              offset: Offset(0, 2),
                            )
                          ],
                        ),
                      ),
                      Text(
                        "An unforgettable experience",
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey[50],
                          fontWeight: FontWeight.w700,
                          shadows: [
                            Shadow(
                              blurRadius: 10,
                              color: Colors.black45,
                              offset: Offset(5, 5),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Space to account for overlapping avatar
          const SizedBox(height: 48),

          // Profile info area
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Row with small avatar + name/username aligned nicely
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // smaller avatar (inline)
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.grey[200],
                      backgroundImage:
                      profile.isNotEmpty ? NetworkImage(profile) : null,
                      child:
                      profile.isEmpty ? const Icon(Icons.person) : null,
                    ),

                    const SizedBox(width: 12),

                    // Name + username stacked and left-aligned
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            username,
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey[600],
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Optional: follow button or more icon could go here
                    // IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
                  ],
                ),

                const SizedBox(height: 16),

                // Bio
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[800],
                      height: 1.5,
                    ),
                    children: const[
                      TextSpan(text: "This was one of the most "),
                      TextSpan(
                        text: "breathtaking sunsets",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(text: "  I have ever witnessed. The colors were just magical. Highly recommend a visit!"),
                    ],
                  ),
                ),

                const SizedBox(height: 16),

                // Following and Followers
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<TextSpan> _buildBioSpans(String text) {
    final List<TextSpan> spans = [];
    final RegExp hashtagRegex = RegExp(r'#\w+');
    int lastIndex = 0;

    for (final match in hashtagRegex.allMatches(text)) {
      if (match.start > lastIndex) {
        spans.add(TextSpan(text: text.substring(lastIndex, match.start)));
      }
      spans.add(
        TextSpan(
          text: match.group(0),
          style: const TextStyle(
            color: Color(0xFF2196F3),
            fontWeight: FontWeight.w600,
          ),
        ),
      );
      lastIndex = match.end;
    }

    if (lastIndex < text.length) {
      spans.add(TextSpan(text: text.substring(lastIndex)));
    }

    return spans;
  }

  Widget _buildStatItem(String count, String label) {
    return Row(
      children: [
        Text(
          count,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(width: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[600],
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
