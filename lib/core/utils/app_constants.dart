import '../../data/models/custom_service.dart';
import '../../data/models/project.dart';
import 'app_assets.dart';

abstract class AppConstants {
  static const double appBarHeight = 80;
  static const List<CustomService> services = [
    CustomService(
      service: 'MOBILE DEVELOPMENT',
      logo: AppAssets.androidLogo,
      description:
          'I am a Flutter developer. I have experience using Dart and Flutter Framework.',
    ),
    CustomService(
      service: 'UI & UX DESIGNING',
      logo: AppAssets.uiDesignLogo,
      description:
          'I design beautiful web interfaces with Figma and Adobe XD. I design beautiful web interfaces with Figma and Adobe XD.',
    ),
    CustomService(
      service: 'WEB Development',
      logo: AppAssets.scrappingLogo,
      description:
          'I can develop website and admin panel using flutter. ',
    ),
  ];
  static const List<Project> projects = [
    Project(
      appStore: 'https://apps.apple.com/in/app/polifyx/id1623606564',
      googlePlay: 'https://play.google.com/store/search?q=polifyx&c=apps&hl=en&gl=US',
      name: 'Polifyx',
      imageUrl:
          'assets/images/apps_images/app_logo.png',
      description:
          'Polifyx is insurance complain app where user can solve all insurance related problems, where having feature know your policy, health claim reimbursements, portfolio services and many more. Having live vedio streaming feature and feedback services and get notify all users about the policy update this is b2c services app',
    ),
    Project(
      name: 'PSA',
      googlePlay: 'https://play.google.com/store/search?q=polifyx&c=apps&hl=en&gl=US',
      imageUrl:
          'assets/images/apps_images/psa.jpeg',
      description:
          'Project-SalesAchieverm CRM is a powerful and easy -to-use CRM specifically designed to manage the complex sales process around the Construction Industry. Used by Architects, Engineers, Contractors, and Suppliers worldwide, Project-SalesAchiever CRM gives companies in the Construction Industry an affordable solution that is simple to use and quick to deploy.',
    ),
    Project(
      appStore: 'https://apps.apple.com/app/corun/idl643092744',
      googlePlay: 'https://play.google.com/store/apps/details?id=com.app.co_run_final',
      name: 'CoRun',
      imageUrl:
          'assets/images/apps_images/CoRun.jpeg',
      description:
          ' Grow a global community of running sports lovers to help them meet, enjoy and share their passion. CoRUN is a global and simple mobile application to help runners get together. Meet running partners everywhere and find and connect immediately. Feel safe to run anytime, anywhere, easily create private running events, manage online training calendars, and connect directly to running events.',
    ),
    Project(
      appStore: 'https://apps.apple.com/in/app/polifyx-id6443657308',
      googlePlay: 'https://play.google.com/store/apps/details?id=com.partner.polifyx&hl=en -IN',
      name: 'Polifyx Partner',
      imageUrl:
          'assets/images/apps_images/polyfixPartner.png',
      description: 'Polifyx Partner App offers a variety of solutions to manage your customers and subordinates, from uploading insurance policies to managing portfolio, uploading insurance claim complaints and tracking real-time updates, getting payout details, and analysing customised reports.'),
    Project(
      name: 'BookClub',
      imageUrl:
          'assets/images/apps_images/bookhub.png',
      description:
          'This project is all about bookhub where you can see free pdf books and download it and also you can add your book as well.',
      githubRepoLink:
          'https://github.com/Sweetyrawat-star/book_hub',
    ),
    Project(
      name: 'Skytacos',
      imageUrl:
          'assets/images/apps_images/skytacos.png',
      description:
          'A food delivery app where user can add do payment and order multiple food at their home.',
   githubRepoLink: 'https://github.com/Sweetyrawat-star/skytacos_app',
    ),
    Project(
      name: 'kargerUmzuge',
      imageUrl:
          'assets/images/apps_images/manfred-karger.png',
      description:
          'kargerUmzuge is basically a transport app where user can import their product anywhere. and having client detail and booking of transport using the calls feature.',
      githubRepoLink: 'https://github.com/Sweetyrawat-star/manfred%20karge'
    ),
    Project(
      name: 'doctorconnext',
      imageUrl:
          'assets/images/apps_images/logo docbot.png',
      description:
          'doctorconnext is basically taking a appointment with doctor and consult free for their disease and symptoms',
  githubRepoLink: 'https://github.com/Sweetyrawat-star/doctorconnext'
    ),
  ];
}
