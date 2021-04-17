# tabbar_without_appbarflutter

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.


/*
Title:Tab Bar Without AppBar
Purpose:Tab Bar Without AppBar
Created By:Kalpesh Khandla
*/  


= = = Android release steps = = =

Generate FAT APK
    - flutter clean
    - flutter build apk --release

Generate split APK's
    - flutter clean
    - flutter build apk --split-per-abi --release 

= = = iOS release steps = = =


Set iOS deployment target

1. Follow below steps
    - setup flutter sdk
    - get packages
    - open runner.xcworkspace from ids folder
    - update version code in yaml

2. Bellow commands will generate the runner.app file
    - flutter clean
    - flutter build ios --release

3. Now open the xcode run/build to check if project has error
    - Select Product -> Archive
    - Follow the uploading steps

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
