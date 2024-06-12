import 'package:local_auth/local_auth.dart';

Future<void> getBiometric() async {
  final localAuth = LocalAuthentication();
  final isAvailable = await localAuth.canCheckBiometrics;
  final isDevice = await localAuth.isDeviceSupported();
  final biometricList = await localAuth.getAvailableBiometrics();
  print('Scarlett');
}
