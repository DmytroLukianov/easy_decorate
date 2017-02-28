# EasyDecorate

This gem helps you easily decorate your objects. There are generator for Rails.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'easy_decorate'
```

And then execute:

    $ bundle

## Usage
Decoretors generating

    $ rails generate decorator Super

Add your methods in SuperDecorator:

    # app/decorators/super_decorator.rb
    class SuperDecorator < EasyDecorate::Decorator
          def my_new_method
            'Hello, this is my first decorator!'
          end
    end
    
Decorate main object

    # app/controllers/user_controller.rb
    class UsersController < ApplicationController
        def show
            @user = User.find_by(params[:id])
            @user = SuperDecorator.new(@user)
            # then you can use 'my_new_method'
            p @user.my_new_method
        end
    end

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/DmytroLukianov/easy_decorate.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
