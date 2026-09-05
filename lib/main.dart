import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Portfolio',

      initialRoute: '/',

      routes: {
        '/': (context) => const HomePage(),
        '/about': (context) => const AboutPage(),
        '/projects': (context) => const ProjectsPage(),
      },
    );
  }
}

// Home Page
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFF7F5F0),

      appBar: AppBar(
        title: const Text(
          'My Portfolio',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF176B6B),
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.08,
            vertical: 35,
          ),

          child: Column(
            children: [

              const SizedBox(height: 10),

              CircleAvatar(
                radius: 70,
                backgroundImage: const NetworkImage(
                  'https://ui-avatars.com/api/?name=V&background=dcebea&color=176b6b&size=300',
                ),
              ),

              const SizedBox(height: 25),

              const Text(
                'K.J. VARAPRASAD',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF176B6B),
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                'B.Tech 3rd Year • Computer Science',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 15),

              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFE6F0EE),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  'Flutter Developer',
                  style: TextStyle(
                    color: Color(0xFF176B6B),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 35),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  SizedBox(
                    width: width > 600 ? 210 : width * 0.4,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/about');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF176B6B),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      child: const Text(
                        'About Me',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 15),

                  SizedBox(
                    width: width > 600 ? 210 : width * 0.4,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/projects');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF176B6B),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      child: const Text(
                        'My Projects',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// About Page
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F5F0),

      appBar: AppBar(
        title: const Text(
          'About Me',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF176B6B),
        foregroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),

          child: Column(
            children: [

              const SizedBox(height: 20),

              Card(
                color: const Color(0xFFE6F0EE),
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),

                child: Padding(
                  padding: const EdgeInsets.all(25),

                  child: Column(
                    children: [

                      const Icon(
                        Icons.person,
                        size: 65,
                        color: Color(0xFF176B6B),
                      ),

                      const SizedBox(height: 15),

                      const Text(
                        'About Me',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF176B6B),
                        ),
                      ),

                      const SizedBox(height: 20),

                      const Text(
                        'Hello! I am K.J. Varaprasad, a B.Tech Computer '
                            'Science Engineer currently in my 3rd year '
                            'at CR Rao AIMSCS. I am interested in software '
                            'development and enjoy exploring different '
                            'technologies through practical projects.',

                        textAlign: TextAlign.center,

                        style: TextStyle(
                          fontSize: 16,
                          height: 1.6,
                        ),
                      ),

                      const SizedBox(height: 15),

                      const Text(
                        'I enjoy building simple and useful applications '
                            'and learning new technologies. I have explored '
                            'Programming, Data Analysis, Machine learning and Flutter while '
                            'improving my problem-solving skills.',

                        textAlign: TextAlign.center,

                        style: TextStyle(
                          fontSize: 16,
                          height: 1.6,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 30),

              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Skills & Areas of Expertise',
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF176B6B),
                  ),
                ),
              ),

              const SizedBox(height: 15),

              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [

                  skillBox('C', Icons.code),
                  skillBox('Python', Icons.code),
                  skillBox('SQL', Icons.storage),
                  skillBox('Flutter', Icons.phone_android),
                  skillBox('Web Development', Icons.web),
                  skillBox('Data Analysis', Icons.bar_chart),
                  skillBox('Machine Learning', Icons.psychology),
                ],
              ),

              const SizedBox(height: 30),

              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF176B6B),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 28,
                    vertical: 13,
                  ),
                ),
                child: const Text('Back to Home'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget skillBox(String name, IconData icon) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),

      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: const Color(0xFFB8D5D2),
        ),
        borderRadius: BorderRadius.circular(20),
      ),

      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 19,
            color: const Color(0xFF176B6B),
          ),
          const SizedBox(width: 7),
          Text(name),
        ],
      ),
    );
  }
}

// Projects Page
class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F5F0),

      appBar: AppBar(
        title: const Text(
          'My Projects',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF176B6B),
        foregroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            children: [

              projectCard(
                Icons.cloud,
                'Weather Forecast App',
                'A Flutter application that displays weather '
                    'information for different locations using '
                    'weather API data.',
                'Flutter',
              ),

              projectCard(
                Icons.bar_chart,
                'Student Performance Analysis',
                'A Flutter-based application that presents '
                    'student performance data through an interactive '
                    'and user-friendly interface.',
                'Flutter • Data Visualization',
              ),

              projectCard(
                Icons.phone_android,
                'Multi-Screen Navigation App',
                'A Flutter application with multiple screens '
                    'demonstrating navigation using Navigator and '
                    'named routes.',
                'Flutter • Navigation',
              ),

              const SizedBox(height: 10),

              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF176B6B),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 28,
                    vertical: 13,
                  ),
                ),
                child: const Text('Back to Home'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget projectCard(
      IconData icon,
      String title,
      String description,
      String technology,
      ) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.only(bottom: 18),

      child: Padding(
        padding: const EdgeInsets.all(18),

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Container(
              width: 60,
              height: 60,

              decoration: BoxDecoration(
                color: const Color(0xFFE6F0EE),
                borderRadius: BorderRadius.circular(14),
              ),

              child: Icon(
                icon,
                color: const Color(0xFF176B6B),
                size: 30,
              ),
            ),

            const SizedBox(width: 15),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF176B6B),
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 15,
                      height: 1.4,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),

                    decoration: BoxDecoration(
                      color: const Color(0xFFE6F0EE),
                      borderRadius: BorderRadius.circular(7),
                    ),

                    child: Text(
                      technology,
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF176B6B),
                      ),
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