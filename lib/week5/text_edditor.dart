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
            profile : 'https://www.khmerbeverages.com/wp-content/uploads/2021/01/Hea-Petter.png',
            imageUrl: 'https://www.krones.com/media/images/KHB_Product_Family_20230102_1240x826px.jpg',
            name: 'Aria Cruz',
            username: '@ariacruz_designs',
            bio: 'Creative Director at #PixelPerfect. Turning ideas into beautiful realities.',
            followingCount: '2,150',
            followersCount: '15.7K',
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
          // Header Image
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: Stack(
            children: [
             Image.network(
              imageUrl,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: 200,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF4FC3F7), Color(0xFF29B6F6)],

                    ),
                  ),
                  child: const Center(
                    child: Icon(Icons.person, size: 80, color: Colors.white),
                  ),
                );
              },

            ),
              Positioned(
                bottom: 40,
                left: 20,
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.blue,
                  backgroundImage: NetworkImage(profile),
                ),
              ),
    ],
    ),
          ),
          // Profile Image
          // Profile Information
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Name
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 4),

                // Username
                Text(
                  username,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w400,
                  ),
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
                    children: _buildBioSpans(bio),
                  ),
                ),
                const SizedBox(height: 16),

                // Following and Followers
                Row(
                  children: [
                    _buildStatItem(followingCount, 'Following'),
                    const SizedBox(width: 24),
                    _buildStatItem(followersCount, 'Followers'),
                  ],
                ),
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