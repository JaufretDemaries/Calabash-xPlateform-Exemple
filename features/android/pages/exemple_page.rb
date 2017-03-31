## Base class for Android implementation.
require 'calabash-android/abase'

class ExemplePage < Calabash::ABase

  # Mandatory
  def trait
    "* id:'nux_help_description'"
  end

end