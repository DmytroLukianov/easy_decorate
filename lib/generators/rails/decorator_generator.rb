require 'rails/generators/named_base'
module Rails
  module Generators
    class DecoratorGenerator < NamedBase
      source_root File.expand_path("../../templates", __FILE__)
      check_class_collision suffix: "Decorator"

      def create_decorator_file
        template 'decorator.rb', File.join('app/decorators', class_path, "#{file_name}_decorator.rb")
      end
    end
  end
end