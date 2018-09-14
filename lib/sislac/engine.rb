module Sislac
  class Engine < ::Rails::Engine
    # The hosting application calls Rails.configuration.engine to access this
    # engine's methods
    config.engine = Sislac

    # Make every asset visible on main app
    config.assets.precompile += %w(
      sislac/app.svg
    )
  end
end
