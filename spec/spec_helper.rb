require 'chefspec'
require 'chefspec/berkshelf'

at_exit { ChefSpec::Coverage.report! }

RSpec.configure do |config|
  config.log_level = :fatal

  # Guard against people using deprecated RSpec syntax
  config.raise_errors_for_deprecations!

  # Why aren't these the defaults?
  config.filter_run focus: true
  config.run_all_when_everything_filtered = true

  # Set a default platform (this is overriden as needed)
  config.platform  = 'freebsd'
  config.version   = '10.0'

  # Be random!
  config.order = 'random'
end
