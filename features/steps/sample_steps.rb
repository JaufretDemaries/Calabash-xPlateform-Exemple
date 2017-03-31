# # CMD to run
# # DEVICE_TARGET='iPhone7-10 (10.0)' APP="/Users/jaufret/Library/Developer/Xcode/DerivedData/pratique-hbdlkjtzprrcbdfjhccnilobnyer/Build/Products/preprod-iphonesimulator/pratiqueLocal-cal.app" RESET_BETWEEN_SCENARIOS=1 SCREENSHOT_PATH="features/screenshots/" cucumber
# # DEVICE_TARGET='iPhone5-9.3 (9.3)' APP="/Users/jaufret/Library/Developer/Xcode/DerivedData/pratique-hbdlkjtzprrcbdfjhccnilobnyer/Build/Products/preprod-iphonesimulator/pratiqueLocal-cal.app" SCREENSHOT_PATH="features/screenshots/" cucumber

# STEP_PAUSE = (ENV['STEP_PAUSE'] || 0.5).to_f

# # App is not launch if Calabash can't see any element on the phone.
# Given /^the app has launched$/  do
#   wait_for do
#     !query("*").empty?
#   end
# end



# ### Screens ###

# And /^I am on the login screen$/ do
#   # User is not logged in the app.
#   query("* marked:'Connexion au service'")
# end

# And /^I am on the main screen$/ do
#   # User is logged in the app.
#   # This method automaticaly escape the quotes of a string.
#   assistance = escape_quotes("Demande d'assistance")
#   #query("UILabel text:'#{assistance}'")
#   query("UILabel text:'Contacts'")
# end

# And /^I am on the contacts screen$/ do
#   # User is logged in the app and can see the Contacts list.
#   query("UILabel *:'RSI'")
# end



# ### Actions ###

# # General method to touch a button.
# Then /^I (?:press|touch) the "([^\"]*)" button label$/ do |name|
#   # This method automaticaly escape the quotes of a string.
#   escapeButtonName = escape_quotes(name)
#   touch("UIButton marked: '#{escapeButtonName}'")

#   sleep(STEP_PAUSE)
# end

# # General method to touch a button.
# Then /^I (?:press|touch) the "([^\"]*)" button$/ do |name|
#   # This method automaticaly escape the quotes of a string.
#   escapeButtonName = escape_quotes(name)
#   touch("button marked: '#{escapeButtonName}'")

#   sleep(STEP_PAUSE)
# end

# # General method to touch a field or a label.
# Then /^I (?:press|touch) the "([^\"]*)" (?:field|label|icon)$/ do |name|
#   # This method automaticaly escape the quotes of a string.
#   escapeFieldName = escape_quotes(name)
#   touch("* marked:'#{escapeFieldName}'")

#   sleep(STEP_PAUSE)
# end

# # General method to touch a field or a label.
# Then /^I (?:press|touch) the "([^\"]*)"$/ do |name|
#   # This method automaticaly escape the quotes of a string.
#   escapeFieldName = escape_quotes(name)
#   touch("UIButton label:'#{escapeFieldName}'")

#   sleep(STEP_PAUSE)
# end

# # General method to enter a text into a text or input field.
# Then /^I enter "([^\"]*)" into the "([^\"]*)" (?:text|input) field$/ do |textToType, fieldName|
#   escapeFieldName = escape_quotes(fieldName)
#   touch("* marked: '#{escapeFieldName}'")

#   wait_for_keyboard
#   keyboard_enter_text(textToType)

#   sleep(STEP_PAUSE)
# end

# ### Scroll ###

# # Scroll to a fiel.
# # When I scroll down on "Gestel"
# When /^I scroll (left|right|up|down) on "([^\"]*)"$/ do |dir, name|
#   escapeFieldName = escape_quotes(name)
#   scroll("* marked: '#{escapeFieldName}'", dir)

#   sleep(STEP_PAUSE)
# end

# # When I scroll to element with "Gestel" label
# When /^I scroll to element with "([^\"]*)" label$/ do |name|
#   escapeFieldName = escape_quotes(name)
#   wait_poll(:until_exists => "* marked:'#{escapeFieldName}'", :timeout => 30) do
#     scroll("*", :down)
#   end

#   sleep(STEP_PAUSE)
# end

# When /^I scroll until element "([^\"]*)" disappear$/ do |name|
#   escapeFieldName = escape_quotes(name)
#   #until_element_does_not_exist("* marked:'#{escapeFieldName}'", :action => lambda { swipe("up") })
#   until_element_does_not_exist("* marked:'#{escapeFieldName}'", :action => lambda {scroll("*", :down)} )

#   sleep(STEP_PAUSE)
# end

# ### Assertions ###

# # General method to assert a text.
# Then /^I should see "([^\"]*)"$/ do |expected_mark|
#   escapedMark = escape_quotes(expected_mark)
#   until element_exists("view marked:'#{escapedMark}'") || element_exists("view text:'#{escapedMark}'")
#     screenshot_and_raise "No element found with mark or text: #{escapedMark}"
#   end

#   sleep(STEP_PAUSE)
# end

# # General method to assert a button.
# Then /^I wait to see "([^\"]*)" button$/ do |text|
#   # This method automaticaly escape the quotes of a string.
#   escapeText = escape_quotes(text)
#   wait_for_element_exists("UIButton marked:'#{escapeText}'")
# end

# # General method to assert a text.
# Then /^I wait to see "([^\"]*)" (?:text|field)$/ do |text|
#   # This method automaticaly escape the quotes of a string.
#   escapeText = escape_quotes(text)
#   wait_for_element_exists("* text:'#{escapeText}'")
# end

# # General method to assert a text with UILabel.
# Then /^I wait to see "([^\"]*)" label$/ do |text|
#   # This method automaticaly escape the quotes of a string.
#   escapeText = escape_quotes(text)
#   wait_for_element_exists("UILabel *:'#{escapeText}'")
# end

# # EXEMPLES
# And(/^I have done a specific thing$/) do
#   # Example: Given I am logged in
#   #  wait_for do
#   #    !query("* marked:'username'").empty?
#   #  end
#   #
#   #  touch("* marked:'username'")
#   #  wait_for_keyboard
#   #  keyboard_enter_text("cleveruser27")
#   #
#   #  touch("* marked:'password'")
#   #  wait_for_keyboard
#   #  keyboard_enter_text("pa$$w0rd")
#   #
#   #  wait_for_element_exists("* marked:'Login'")
#   #  touch("* marked:'Login'")

#   # Remember: any Ruby is allowed in your step definitions
#   did_something = true

#   unless did_something
#     fail 'Expected to have done something'
#   end
# end

# When(/^I try to log in with invalid credentials$/) do
#   # Example: When I create a new entry
#   #  tap("* marked:'new_entry'")
#   #  wait_for_keyboard
#   #  keyboard_enter_text("* marked:'entry_title'", 'My Entry')
#   #
#   #  tap("* marked:'submit'")
# end

# When(/^I do something$/) do
#   # Example: When I create a new entry
#   #  tap("* marked:'new_entry'")
#   #  wait_for_keyboard
#   #  keyboard_enter_text("* marked:'entry_title'", 'My Entry')
#   #
#   #  tap("* marked:'submit'")
# end

# Then(/^something should happen$/) do
#   # Example: Then I should see the entry on my home page
#   #  wait_for_element_exists("* text:'My Entry'")
# end

########
########

# # Load the correct class screen.
# Given /^I should see the text Count On Me$/ do
# 	#Load the MainScreen.
# 	@current_page = page(MainScreen)
# 	@current_page.await(timeout: 30)

# 	# MainScreen.
# 	@current_page.assertMainScreen
# end

# When /^I touch the floating menu button$/ do
# 	# MainScreen.
# 	@current_page.openFloattingMenu
# end

# And /^I touch the add category button$/ do
# 	# MainScreen.
# 	@current_page.navToNewCategoryScreen
# end

# And /^I should see the text Nouvelle catégorie$/ do
# 	#Load the CategoryScreen.
# 	@current_page = page(CategoryScreen)
# 	@current_page.await(timeout: 30)

# 	# CategoryScreen.
# 	@current_page.assertNewCategoryScreen
# end

# When /^I enter "([^\"]*)" into the Name field$/ do |name|
# 	# CategoryScreen.
# 	@current_page.enterCategoryName(name)
# end

# And /^I touch the pink button$/ do
# 	# CategoryScreen.
# 	@current_page.changeToPinkBackgroundColor
# end

# And /^I touch the heart icon$/ do
# 	# CategoryScreen.
# 	@current_page.touchHeartIcon
# end

# And /^I touch the Enregistrer button$/ do
# 	# CategoryScreen.
# 	@current_page.saveNewCategory
# end

# And /^I should see the text Test$/ do
# 	# Load MainScreen.
# 	@current_page = page(MainScreen)
# 	@current_page.await(timeout: 30)

# 	# MainScreen.
# 	@current_page.assertBookmarkCategory
# end

# When /^I touch the Test button$/ do 
# 	# MainScreen.
# 	@current_page.touchBookmarkCategory
# end

# Then /^I should be on the Category Screen$/ do
# 	# Load CategoryScreen.
# 	@current_page = page(CategoryScreen)
# 	@current_page.await(timeout: 30)

# 	@current_page.assertCategoryScreen
# end

# When /^I touch the edit category icon$/ do
# 	# CategoryScreen.
# 	@current_page.touchEditCategoryButton
# end

# When /^I should see the text Edition$/ do
# 	# CategoryScreen.
# 	#@current_page.assertEditionCategory
# 	@current_page.assertTrait
# end 

# When /^I touch the shirt icon$/ do
# 	# CategoryScreen.
# 	@current_page.touchShirtIcon
# end

# When /^I should see the text Test edit$/ do
# 	# Load MainScreen.
# 	@current_page = page(MainScreen)
# 	@current_page.await(timeout: 30)

# 	# MainScreen.
# 	@current_page.assertBookmarkEditionCategory
# end

# When /^I touch the Back button$/ do
# 	# CategoryScreen.
# 	@current_page.touchBackButton
# end

# When /^I touch the trash icon$/ do
# 	# Load CategoryScreen.
# 	@current_page = page(CategoryScreen)
# 	@current_page.await(timeout: 30)

# 	# CategoryScreen.
# 	@current_page.deleteCurrentCategory
# end

# When /^I should see the text Suppression$/ do
# 	# CategoryScreen.
# 	@current_page.assertSuppressionMessage
# end

# # Dual Screen
# When /^I touch the Confirmer button$/ do
# 	# CategoryScreen.
# 	@current_page.touchConfirmButton
# end

# Then /^I should not see Test$/ do
# 	# MainScreen.
# 	@current_page.assertNotBookmarkCategory
# end

# Then /^I press the return to menu button$/ do
# 	# CategoryScreen.
# 	@current_page.returnToMenu
# end

# When /^I touch the add mesure button$/ do
# 	# MainScreen.
# 	@current_page.navToNewMesureScreen
# end

# Then /^I should see the text Nouvelle mesure$/ do
# 	# Load MesureScreen.
# 	@current_page = page(MesureScreen)
# 	@current_page.await(timeout: 30)

# 	# MesureScreen.
# 	@current_page.assertCreateNewMesureScreen
# end

# Then /^I enter "([^\"]*)" into the mesure name field$/ do |mesureName|
# 	# MesureScreen.
# 	@current_page.enterTextInMesureNameField(mesureName)
# end

# Then /^I touch the euro icon$/ do
# 	# MesureScreen.
# 	@current_page.changeIconToEuroSymbol
# end

# Then /^I select "([^\"]*)" in the drop-down type field$/ do |mesureType|
# 	# MesureScreen.
# 	@current_page.selectMesureType(mesureType)
# end

# And /^I touch the enregistrer button$/ do
# 	# MesureScreen.
# 	@current_page.createNewMesure
# end

# And /^I should see the text Test Mesure$/ do
# 	# Load the MainScreen.
# 	@current_page = page(MainScreen)
# 	@current_page.await(timeout: 30)

# 	# MainScreen.
# 	@current_page.assertTestMesure
# end

# Then /^I touch the Test Mesure button$/ do
# 	# MainScreen
# 	@current_page.touchButtonTestMesure
# end

# Then /^I take a new mesure$/ do
# 	# Load the Mesure Screen.
# 	@current_page = page(MesureScreen)
# 	@current_page.await(timeout: 30)

# 	# MesureScreen.
# 	@current_page.createNewRecord
# end

# Then /^I enter "([^\"]*)" in the value field$/ do |value|
# 	# MesureScreen.
# 	@current_page.setAmountMesure(value)
# end

# Then /^I validate the new mesure$/ do
# 	# MesureScreen.
# 	@current_page.saveNewMesure
# end

# Then /^I should see the mesure$/ do
# 	# MesureScreen.
# 	@current_page.assertTestMesure
# end

# Given /^I should be in the mesure screen$/ do
# 	# Load the Mesure Screen.
# 	@current_page = page(MesureScreen)
# 	@current_page.await(timeout: 30)

# 	@current_page.assertMesureScreen
# end

# Then /^I touch the trash icon from mesure screen$/ do
# 	@current_page.deleteCurrentMesure
# end

# Then /^I should see the text Suppression from mesure screen$/ do
# 	@current_page.assertSuppressionMessage
# end

# Then /^I should not see "([^\"]*)"$/ do |text|
# 	@current_page.assertNotText(text)
# end

# When /^I touch the side menu button$/ do
# 	@current_page.openSideMenu
# end

# Then /^I touch the Accueil button$/ do
# 	@current_page.navToAccueil
# end