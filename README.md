<p align="center">
  <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/Art_Institute_of_Chicago_logo.svg/1200px-Art_Institute_of_Chicago_logo.svg.png" width="350" title="logo">
</p>

# ACM app (Arts - Chicago Museum)

App for searching and listing the works contained in the repository of the AIC Museum of Arts in Chicago.   All information listed is available in the API (https://api.artic.edu/api/v1/)

Hello, this app is not an official [AIC](https://www.artic.edu/) app but it is a good project. If you want to run it, you need to meet some requirements:
- have a machine with Flutter 3.0;
- have a min Dart SDK 2.x
- have a mobile emulator (Android or IOS)*;
   > in case it doesn't, the app runs in the chrome browser, but it's not sure to contain all the functionality. 

### Run app

to run the app, you need to follow the steps:

1. Open the repository: 
```cd acm_arts```

2. Download dependencies:
``` flutter pub get ```

3. Generate the project's auxiliary files:
``` flutter pub run build_runner build ```

> if an error occurs in this step, consider running the following command ```flutter pub run build_runner build --delete-conflicting-outputs```

4. run the app
```flutter run ```



