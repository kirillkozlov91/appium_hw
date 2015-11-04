# appium_hw

### Prerequisites:
Appium - http://appium.io
Xcode 7.0 with command line tools
iOS 8.4 device emulator (iPhone 6)
Node.js (brew install node)
One of the latest and stable ruby versions (rvm install 2.2.1) 
Cucumber gem (gem install cucumber)

### Clone this repo to your machine (e.g. to Desktop):
cd ~/Desktop
git clone https://github.com/kirillkozlov91/appium_hw.git

### Launch Appium server from the folder or remote machine where you have your Appium installed
node bin/appium.js --session-override --device-name "iPhone 6" --platform-version "8.4" --platform-name "iOS" --app "~/Desktop/appium_hw/Movies.app"

### Cd to root directory of tests and install other required gems by using bundler
cd ~/Desktop/appium_hw
gem install bundler
bundle install

## Launch tests by using "all_tests" profile
cucumber -p all_tests

### Complete list of profiles:
count_featured_movies
info_first_five_movies
highest_rating_first_five_movies
all_tests