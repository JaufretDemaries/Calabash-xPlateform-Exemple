require 'calabash-android/management/adb'
require 'calabash-android/operations'


Before ('@restart_server') do |scenario|
  start_test_server_in_background
end

Before do |scenario|
  if scenario.failed?
    screenshot_embed
  end
end

After ('@stop_server') do |scenario|
  if scenario.failed?
    screenshot_embed
  end
  shutdown_test_server
end