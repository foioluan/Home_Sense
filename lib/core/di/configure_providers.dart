import 'package:home_sense/services/auth_service.dart';
import 'package:home_sense/services/location_service.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class ConfigureProviders {
  final List<SingleChildWidget> providers;

  ConfigureProviders({required this.providers});

  static Future<ConfigureProviders> createDependencyTree() async {
    final authService = AuthService();

    return ConfigureProviders(providers: [
      Provider<AuthService>.value(value: authService),
    ]);
  }
}
