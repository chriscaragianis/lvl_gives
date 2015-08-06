include Capybara::DSL

class StepHelpers
  @destination = {'welcome page' => "/index.html",
    'new account' => 'accounts/new'}
  @css_matchers = {'Create Account button on header' => 'button.create-account'}
  @content_matchers = {'Create Account button on header' => 'Sign Up!'}

  def self.validate_input input
    if input.length < 1 or input.length > 255 then
      return false
    end
    return true 
  end

  class << self
    attr_reader :destination, :css_matchers, :content_matchers
  end
end
