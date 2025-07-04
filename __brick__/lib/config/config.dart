enum AppFlavor { dev, staging, prod }

class AppConfig {
  static late AppFlavor flavor;

  static void init(AppFlavor flv) {
    flavor = flv;
  }

  static String get apiBaseUrl {
    switch (flavor) {
      case AppFlavor.dev:
        return 'https://dev.api.nearhappens.com';
      case AppFlavor.staging:
        return 'https://staging.api.nearhappens.com';
      case AppFlavor.prod:
        return 'https://api.nearhappens.com';
    }
  }

  static String get flavorName => flavor.name;
}
