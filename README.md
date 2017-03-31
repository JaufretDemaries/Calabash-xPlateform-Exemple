## Welcome to the Calabash exemple implementation.

#### This project is based on this two tools:
* [Calabash Android GitHub](https://github.com/calabash/calabash-android)
* [Calabash iOS GitHub](https://github.com/calabash/calabash-ios)

Use **Bundler** to install needed gems, to install the projet just go in the main directory and run: `bundler install`. This command will install the gem wrote in the Gemfile and install all dependancies and create the Gemfile.lock file.

##### For Android:
* `calabash-android resign path.apk`
resign app with the actual keystore

* `calabash-android build path.apk`
build the test server

* `calabash-android run path.apk -r features/support -r features/android -r features/steps`
run the tests and all features in the specified path (if not specified, Calabash will mess with iOS part of the project)

* `calabash-android console path.apk`
launch the calabash console

* `start_test_server_in_background`
use it in the calabash console to run the app and explore elements with queries

* `ADB_DEVICE_ARG= calabash-android run path.apk  -p profil-name`
Run the test from a specific profil from the Cucumber.yml file. Global var need to be defined.

##### For iOS:
* `calabash-ios console`
launch the calabash console

* `start_test_server_in_background`
use it in the calabash console to run the app and explore elements with queries

* `DEVICE_TARGET= APP= cucumber -p profil-name`
Run tests from a specific profil from the Cucumber.yml file. Global var need to be defined.
