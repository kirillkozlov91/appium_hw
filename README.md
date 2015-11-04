### Install Xcode with command line tools  
If you don’t have Xcode, install from here: https://developer.apple.com/xcode/download/  
xcode-select --install  
  
### Download iOS 8.4 Simulator  
Xcode > Preferences > Downloads > Components > iOS 8.4 Simulator  
  
### Install RVM and latest stable Ruby version (e.g. 2.2.1)  
\curl -sSL https://get.rvm.io | bash -s stable --ruby  
rvm install 2.2.1  
rvm --default use 2.2.1  
ruby -v  
  
### Install Homebrew  
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"  
brew -v  
  
### Install Node.js  
brew update  
brew install node  
node -v  
  
### Clone repos with Appium and tests to your machine (e.g. clone to Desktop)  
cd ~/Desktop  
git clone https://github.com/appium/appium.git  
git clone https://github.com/kirillkozlov91/appium_hw.git  
  
### Setup Appium to work from command line, ignore warning message at the end for Android  
cd ~/Desktop/appium  
rm -rf node_modules  
npm install -g appium  
sh reset.sh  
appium -v  
  
### After setup for Appium finished, launch Appium server, Accept incoming connections  
cd ~/Desktop/appium  
node bin/appium.js --session-override --device-name "iPhone 6" --platform-version "8.4" --platform-name "iOS" --app "~/Desktop/appium_hw/Movies.app"  
  
### In separate Terminal tab, cd to root directory of tests and install other required gems by using bundler  
  
cd ~/Desktop/appium_hw  
gem install cucumber  
gem install bundler  
bundle install  
  
### Launch tests by using "all_tests" profile  
  
cucumber -p all_tests  
  
### Complete list of profiles:  
  
count_featured_movies  
info_first_five_movies  
highest_rating_first_five_movies  
all_tests  
