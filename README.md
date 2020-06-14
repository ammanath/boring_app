# hn_app  
- Flutter project built by following the instructions from the Boring Flutter Show  
- https://www.youtube.com/watch?v=yr8F2S3Amas&list=PLOU2XLYxmsIK0r_D-zWcmJ1plIcDNnRkK&index=1  

# repointed git to renamed root
PS C:\working\FlutterProjs\hn_app> git remote -v
origin  https://github.com/bit00/boring_app.git (fetch)
origin  https://github.com/bit00/boring_app.git (push)
PS C:\working\FlutterProjs\hn_app> git remote set-url origin https://github.com/ammanath/boring_app.git

# To run the tests  
flutter run test/widget_test.dart  
//To run tests without the emulator
PS C:\working\FlutterProjs\hn_app> flutter test
//To run tests on the emulator
PS C:\working\FlutterProjs\hn_app> flutter run .\test\widget_test.dart
