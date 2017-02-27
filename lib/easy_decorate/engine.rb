module EasyDecorate
  class Engine < Rails::Engine
    config.autoload_paths += Dir["#{config.root}/app/decorators/**/*"]
  end
end