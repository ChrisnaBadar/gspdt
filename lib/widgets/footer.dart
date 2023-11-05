import 'package:gspdt/constants/constants.dart';

List<Widget> _menuList(bool en) {
  return [
    Text(
      AppStrings(en: en).MENU,
      style: const TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    Text(
      AppStrings(en: en).HOME,
      style: const TextStyle(
        fontSize: 16.0,
        color: Colors.white,
      ),
    ),
    Text(
      AppStrings(en: en).ABOUT_US,
      style: const TextStyle(
        fontSize: 16.0,
        color: Colors.white,
      ),
    ),
    Text(
      AppStrings(en: en).SERVICES,
      style: const TextStyle(
        fontSize: 16.0,
        color: Colors.white,
      ),
    ),
  ];
}

List<Widget> _policiesList(bool en) {
  return [
    Text(
      AppStrings(en: en).PRIVACY_POLICY,
      style: const TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    Text(
      AppStrings(en: en).TERM_OF_SERVICE,
      style: const TextStyle(
        fontSize: 16.0,
        color: Colors.white,
      ),
    ),
    Text(
      AppStrings(en: en).PRIVACY_POLICY,
      style: const TextStyle(
        fontSize: 16.0,
        color: Colors.white,
      ),
    ),
    Text(
      '${AppStrings(en: en).AUTHOR}: ${AppStrings(en: en).AUTHOR_NAME}',
      style: const TextStyle(
        fontSize: 16.0,
        color: Colors.white,
      ),
    ),
  ];
}

List<Widget> _contactList(bool en) {
  return [
    Text(
      AppStrings(en: en).CONTACT_US,
      style: const TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    Text(
      '${AppStrings(en: en).EMAIL}: ${AppStrings(en: en).COMPANY_MAIL}',
      style: const TextStyle(
        fontSize: 16.0,
        color: Colors.white,
      ),
    ),
    Text(
      '${AppStrings(en: en).PHONE} ${AppStrings.COMPANY_PHONE}',
      style: const TextStyle(
        fontSize: 16.0,
        color: Colors.white,
      ),
    ),
    Text(
      '${AppStrings(en: en).ADDRESS}: ${AppStrings(en: en).COMPANY_ADDRESS}',
      style: const TextStyle(
        fontSize: 16.0,
        color: Colors.white,
      ),
    ),
  ];
}

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  bool en = false;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: const Color(0xFF333333), // Background color #333333
      padding: const EdgeInsets.symmetric(vertical: 50.0),
      child: screenWidth <= AppSizes.TABLET_SIZE
          ? _phoneBody(en: en, parentWidth: screenWidth)
          : _desktopBody(en: en, parentWidth: screenWidth),
    );
  }
}

//===============================DESKTOP===============================
Widget _desktopBody({required bool en, required double parentWidth}) {
  return Row(
    children: [
      //Left Side
      Expanded(
          child: Column(
        children: [
          //Logo
          Image.asset(
            AppImages.LOGO_LIGHT,
          ),
          const SizedBox(
            height: 16.0,
          ),
          // About or Description
          Row(
            children: [
              const Spacer(),
              TextButton.icon(
                  onPressed: null,
                  icon: const Iconify(
                    EntypoSocial.facebook,
                    color: AppThemes.primaryTextDark,
                  ),
                  label: Text(
                    AppStrings.COMPANY_FACEBOOK,
                    style: AppTextstyles().paragraphDark(),
                  )),
              TextButton.icon(
                  onPressed: null,
                  icon: const Iconify(
                    EntypoSocial.instagram,
                    color: AppThemes.primaryTextDark,
                  ),
                  label: Text(
                    AppStrings.COMPANY_INSTAGRAM,
                    style: AppTextstyles().paragraphDark(),
                  )),
              TextButton.icon(
                  onPressed: null,
                  icon: const Iconify(
                    EntypoSocial.linkedin,
                    color: AppThemes.primaryTextDark,
                  ),
                  label: Text(
                    AppStrings.COMPANY_LINKEDIN,
                    style: AppTextstyles().paragraphDark(),
                  )),
              const Spacer()
            ],
          )
        ],
      )),

      //Right Side
      Expanded(
          child: Column(
        children: [
          Text(
            AppStrings(en: en).SLOGAN,
            style: const TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Menu Items
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: _menuList(en),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: _policiesList(en),
                  ),
                ),
                // Contact Information

                parentWidth <= AppSizes.DESKTOP_SIZE
                    ? Container()
                    : Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: _contactList(en),
                        ),
                      ),
                // Privacy Policy and Author
              ],
            ),
          ),
        ],
      ))
    ],
  );
}

//===============================PHONE===============================
Widget _phoneBody({required bool en, required double parentWidth}) {
  return SizedBox(
    width: parentWidth,
    child: Column(
      children: [
        //LOGO
        Image.asset(AppImages.LOGO_LIGHT),
        SizedBox(
          height: 32.0,
        ),
        Divider(),

        //Footer Items
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: _menuList(en),
              )),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: _policiesList(en),
              )),
            ],
          ),
        ),
        SizedBox(
          height: 32.0,
        ),
        Divider(),

        //Contact Info
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: _contactList(en),
          ),
        )
      ],
    ),
  );
}
