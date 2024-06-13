import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
import 'package:local_auth_android/local_auth_android.dart';
import 'package:local_auth/error_codes.dart' as biometric_erros;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String biometricHint = 'biometricHint';
  String biometricNotRecognized = 'biometricNotRecognized';
  String biometricRequiredTitle = 'biometricRequiredTitle';
  String biometricSuccess = 'biometricSuccess';
  String goToSettingsButton = 'goToSettingsButton';
  String goToSettingsDescription = 'goToSettingsDescription';
  String deviceCredentialsRequiredTitle = 'deviceCredentialsRequiredTitle';
  String deviceCredentialsSetupDescription =
      'deviceCredentialsSetupDescription';
  String signInTitle = 'signInTitle';
  String cancelButton = 'cancelButton';
  bool useErrorDialogs = true;
  bool stickyAuth = true;
  bool sensitiveTransaction = true;
  bool biometricOnly = true;
  bool isAvailable = true;
  bool isDevice = true;
  List<BiometricType> biometricList = [];
  bool result = true;
  String error = 'default';
  Exception? exception;
  String localizedReason = 'localizedReason';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    final localAuth = LocalAuthentication();
                    isAvailable = await localAuth.canCheckBiometrics;
                    isDevice = await localAuth.isDeviceSupported();
                    biometricList = await localAuth.getAvailableBiometrics();
                    try {
                      result = await localAuth.authenticate(
                        localizedReason: localizedReason,
                        authMessages: [
                          AndroidAuthMessages(
                            biometricHint: biometricHint,
                            biometricNotRecognized: biometricNotRecognized,
                            biometricRequiredTitle: biometricRequiredTitle,
                            biometricSuccess: biometricSuccess,
                            goToSettingsButton: goToSettingsButton,
                            goToSettingsDescription: goToSettingsDescription,
                            deviceCredentialsRequiredTitle:
                                deviceCredentialsRequiredTitle,
                            deviceCredentialsSetupDescription:
                                deviceCredentialsSetupDescription,
                            signInTitle: signInTitle,
                            cancelButton: cancelButton,
                          ),
                        ],
                        options: AuthenticationOptions(
                          useErrorDialogs: useErrorDialogs,
                          stickyAuth: stickyAuth,
                          sensitiveTransaction: sensitiveTransaction,
                          biometricOnly: biometricOnly,
                        ),
                      );
                      error = '';
                      exception = null;
                      setState(() {});
                    } on PlatformException catch (e) {
                      switch (e.code) {
                        case biometric_erros.notEnrolled:
                          error = 'notEnrolled';
                          break;
                        case biometric_erros.lockedOut:
                          error = 'lockedOut';
                          break;
                        case biometric_erros.permanentlyLockedOut:
                          error = 'permanentlyLockedOut';
                          break;
                        case biometric_erros.biometricOnlyNotSupported:
                          error = 'biometricOnlyNotSupported';
                          break;
                        case biometric_erros.notAvailable:
                          error = 'notAvailable';
                          break;
                        case biometric_erros.otherOperatingSystem:
                          error = 'otherOperatingSystem';
                          break;
                        case biometric_erros.passcodeNotSet:
                          error = 'passcodeNotSet';
                          break;
                      }
                      exception = e;
                      setState(() {});
                    }
                    setState(() {});
                  },
                  child: const Text('press me'),
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () => setState(() {
                          useErrorDialogs = !useErrorDialogs;
                        }),
                        child: Text('useErrorDialogs $useErrorDialogs'),
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () => setState(() {
                          stickyAuth = !stickyAuth;
                        }),
                        child: Text('stickyAuth $stickyAuth'),
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () => setState(() {
                          sensitiveTransaction = !sensitiveTransaction;
                        }),
                        child:
                            Text('sensitiveTransaction $sensitiveTransaction'),
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () => setState(() {
                          biometricOnly = !biometricOnly;
                        }),
                        child: Text('biometricOnly $biometricOnly'),
                      ),
                    ),
                  ],
                ),
                Text('''
isAvailable: $isAvailable
isDevice: $isDevice
biometricList: $biometricList
result: $result
error: $error
exception: $exception
'''),
                const SizedBox(height: 15),
                TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'localizedReason',
                  ),
                  onChanged: (text) => setState(() {
                    localizedReason = text.isEmpty ? 'localizedReason' : text;
                  }),
                ),
                const SizedBox(height: 15),
                TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'biometricHint',
                  ),
                  onChanged: (text) => setState(() {
                    biometricHint = text.isEmpty ? 'biometricHint' : text;
                  }),
                ),
                const SizedBox(height: 15),
                TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'biometricNotRecognized',
                  ),
                  onChanged: (text) => setState(() {
                    biometricNotRecognized =
                        text.isEmpty ? 'biometricNotRecognized' : text;
                  }),
                ),
                const SizedBox(height: 15),
                TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'biometricRequiredTitle',
                  ),
                  onChanged: (text) => setState(() {
                    biometricRequiredTitle =
                        text.isEmpty ? 'biometricRequiredTitle' : text;
                  }),
                ),
                const SizedBox(height: 15),
                TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'biometricSuccess',
                  ),
                  onChanged: (text) => setState(() {
                    biometricSuccess = text.isEmpty ? 'biometricSuccess' : text;
                  }),
                ),
                const SizedBox(height: 15),
                TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'goToSettingsButton',
                  ),
                  onChanged: (text) => setState(() {
                    goToSettingsButton =
                        text.isEmpty ? 'goToSettingsButton' : text;
                  }),
                ),
                const SizedBox(height: 15),
                TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'goToSettingsDescription',
                  ),
                  onChanged: (text) => setState(() {
                    goToSettingsDescription =
                        text.isEmpty ? 'goToSettingsDescription' : text;
                  }),
                ),
                const SizedBox(height: 15),
                TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'deviceCredentialsRequiredTitle',
                  ),
                  onChanged: (text) => setState(() {
                    deviceCredentialsRequiredTitle =
                        text.isEmpty ? 'deviceCredentialsRequiredTitle' : text;
                  }),
                ),
                const SizedBox(height: 15),
                TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'deviceCredentialsSetupDescription',
                  ),
                  onChanged: (text) => setState(() {
                    deviceCredentialsSetupDescription = text.isEmpty
                        ? 'deviceCredentialsSetupDescription'
                        : text;
                  }),
                ),
                const SizedBox(height: 15),
                TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'signInTitle',
                  ),
                  onChanged: (text) => setState(() {
                    signInTitle = text.isEmpty ? 'signInTitle' : text;
                  }),
                ),
                const SizedBox(height: 15),
                TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'cancelButton',
                  ),
                  onChanged: (text) => setState(() {
                    cancelButton = text.isEmpty ? 'cancelButton' : text;
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
