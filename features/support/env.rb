## Read it ##
# Calabash provide defaults steps, wich are modules to load.

# Requiring this file will import:
# * the Calabash Cucumber API,
# * the Calabash Cucumber predefined Steps,
# * and the Calabash::Formatters::Html cucumber formatter.
#require "calabash-cucumber/cucumber"

# To use Calabash without the predefined Calabash Steps, uncomment these lines

# Only load modules that we need.
# iOS
require "calabash-cucumber/wait_helpers"
require "calabash-cucumber/operations"
# Android
require "calabash-android/color_helper"
require "calabash-android/operations"
# World method is provided by Cucumber and create an instance of Object.
# Operations is a module for wrapping the public APIs of this gem.
# iOS
World(Calabash::Cucumber::Operations)
# Android
World(Calabash::Android::ColorHelper)
World(Calabash::Android::Operations)