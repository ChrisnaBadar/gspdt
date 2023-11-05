import 'package:gspdt/constants/constants.dart';

class CustomMobileHeader extends StatelessWidget {
  const CustomMobileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [_buildHeader(context), _buildMenuItem(context)],
      ),
    );
  }
}

Widget _buildHeader(BuildContext context) => Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
    );

Widget _buildMenuItem(BuildContext context) => Padding(
      padding: const EdgeInsets.all(24.0),
      child: Wrap(
        runSpacing: 16,
        children: [
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Beranda'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.description_outlined),
            title: const Text('Proyek Kami'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.business_center_outlined),
            title: const Text('Tentang Kami'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.article_outlined),
            title: const Text('Artikel'),
            onTap: () {},
          ),
          const Divider()
        ],
      ),
    );
