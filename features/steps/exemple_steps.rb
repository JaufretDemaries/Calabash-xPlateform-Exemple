# Instanciate Page Object.
Given(/^I am on the exemple screen$/) do
  @current_page = page(ExemplePage).await(timeout: 30)
end