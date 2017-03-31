## Base class for iOS implementation.
require 'calabash-cucumber/ibase'

class ExemplePage < Calabash::IBase

  # Mandatory
  def trait
    "UINavigationBar marked:'Support'"
  end

end