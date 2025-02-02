# internet_speed_test

Internet speed test plugin to integrate it in your app whenever you want.

## Get started

### Add dependency

```yaml
dependencies:
  i_internet_speed_test: ^0.1.0
```

### Example

```dart

  import 'package:i_internet_speed_test/internet_speed_test.dart';
  import 'package:i_internet_speed_test/callbacks_enum.dart';

  final internetSpeedTest = InternetSpeedTest();

  internetSpeedTest.startDownloadTesting(
     onDone: (double transferRate, SpeedUnit unit) {
        // TODO: Change UI
     },
     onProgress: (double percent, double transferRate, SpeedUnit unit) {
        // TODO: Change UI
     },
     onError: (String errorMessage, String speedTestError) {
        // TODO: Show toast error
     },
   );



  internetSpeedTest.startUploadTesting(
     onDone: (double transferRate, SpeedUnit unit) {
       print('the transfer rate $transferRate');
       setState(() {
         // TODO: Change UI
       });
     },
     onProgress: (double percent, double transferRate, SpeedUnit unit) {
       print(
           'the transfer rate $transferRate, the percent $percent');
       setState(() {
         // TODO: Change UI
       });
     },
     onError: (String errorMessage, String speedTestError) {
       // TODO: Show toast error
     },
  );

```

### Additional features

You can also configure your test server URL

```dart

  import 'package:i_internet_speed_test/internet_speed_test.dart';
  import 'package:i_internet_speed_test/callbacks_enum.dart';

  ...

  final internetSpeedTest = InternetSpeedTest();

  internetSpeedTest.startDownloadTesting(
     onDone: (double transferRate, SpeedUnit unit) {
        // TODO: Change UI
     },
     onProgress: (double percent, double transferRate, SpeedUnit unit) {
        // TODO: Change UI
     },
     onError: (String errorMessage, String speedTestError) {
        // TODO: Show toast error
     },
     testServer: //Your test server URL goes here,
   );



  internetSpeedTest.startUploadTesting(
     onDone: (double transferRate, SpeedUnit unit) {
       print('the transfer rate $transferRate');
       setState(() {
         // TODO: Change UI
       });
     },
     onProgress: (double percent, double transferRate, SpeedUnit unit) {
       print(
           'the transfer rate $transferRate, the percent $percent');
       setState(() {
         // TODO: Change UI
       });
     },
     onError: (String errorMessage, String speedTestError) {
       // TODO: Show toast error
     },
     testServer: //Your test server URL goes here,
  );

```

If you don't provide a customized server URL we'll be using this URL for downloading
http://ipv4.ikoula.testdebit.info/1M.iso

And this for uploading
http://ipv4.ikoula.testdebit.info/


### Contributors

This packages is just an improvement made by [ajomuch92](https://github.com/ajomuch92) based on [internet_speed_test](https://pub.dev/packages/internet_speed_test) package to make it compatible with latest Flutter version.

### Platforms

The package is working on both platforms iOS & Android!

### Shoutout

Shoutout to [JSpeedTest](https://github.com/bertrandmartel/speed-test-lib)

