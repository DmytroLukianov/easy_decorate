require "easy_decorate/version"
require 'easy_decorate/engine' if defined?(Rails)

module EasyDecorate


  class Decorator
    def initialize(object)
      @object = object
    end

    def method_missing(method_name, *args, &block)
      if @object.respond_to?(method_name)
        @object.send(method_name, *args, &block)
      else
        super
      end
    end

    def respond_to_missing?(method_name, include_private = false)
      @object.respond_to?(method_name)
    end

    def undecorated
      @object
    end
  end
end
