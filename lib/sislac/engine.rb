module Sislac
  class Engine < ::Rails::Engine
    config.before_initialize do
      ActiveSupport.on_load :action_controller do
        # Include helpers on main app
        include Sislac::ApplicationHelper
      end
    end

    # Make every asset visible on main app
    config.assets.precompile += %w(
      sislac/app.svg
    )
  end
end
