part of 'config.dart';

class DependencyInjection {
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await initDi();
    // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  }
}
