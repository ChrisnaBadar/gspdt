import 'package:dartz/dartz.dart' as dartz;
import 'package:gspdt/constants/constants.dart';
import 'package:gspdt/models/project_model.dart';
import 'package:gspdt/services/db_services.dart';

class AboutUsPage extends StatefulWidget {
  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  Future<dartz.Either<String, ListProjectModel>>? response;
  @override
  void initState() {
    // TODO: implement initState
    response = DbServices().fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: response,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.connectionState == ConnectionState.done) {
            final result = snapshot.data!
                .fold((l) => 'error', (r) => ListProjectModel(data: r.data));

            if (result != String) {
              ListProjectModel finalResult = result as ListProjectModel;
              print('final result = ${finalResult.data!.first.attributes}');
            } else {}
            return Scaffold(
              appBar: AppBar(
                title: const Text('About Us'),
              ),
              body: FutureBuilder(
                  future: response,
                  builder: (context, snapshot) {
                    return SingleChildScrollView(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Our Story',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 16),
                          const Text(
                            'We are a group of skilled software developers, designers, and product managers who believe in the power of digital technology to make the world a better place. We strive to create innovative, user-friendly products that help people connect, communicate, and collaborate in a seamless and efficient manner.',
                            style: TextStyle(fontSize: 16),
                          ),
                          const SizedBox(height: 32),
                          const Text(
                            'Meet Our Team',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 16),
                          Column(
                            children: [
                              _buildTeamMember('Alice', 'Software Developer',
                                  'assets/images/alice.jpg'),
                              _buildTeamMember('Bob', 'UI/UX Designer',
                                  'assets/images/bob.jpg'),
                              _buildTeamMember('Charlie', 'Product Manager',
                                  'assets/images/charlie.jpg'),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
            );
          } else {
            return Scaffold(
              body: Center(
                child: Text(
                  'ERROR 101',
                  style: AppTextstyles().h1Light(),
                ),
              ),
            );
          }
        });
  }

  Widget _buildTeamMember(String name, String position, String imagePath) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 80,
          height: 80,
          margin: const EdgeInsets.only(bottom: 8),
          child: Image.asset(imagePath),
        ),
        Text(
          name,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(
          position,
          style: const TextStyle(fontSize: 14, color: Colors.grey),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
