require "spec_helper"

describe EasyDecorate do
  before(:each) do
     class Undecorated
      def price
        10
      end

      def count
        3
      end
    end

    class MyDecorator < EasyDecorate::Decorator
      def price
        20
      end
    end

    @obj = Undecorated.new
    @obj = MyDecorator.new(@obj)
  end

  it "has a version number" do
    expect(EasyDecorate::VERSION).not_to be nil
  end

  it "does decorating work" do
   
    expect(@obj.price).to eq(20)
  end

  it "does undecorated methods for main object work" do
    expect(@obj.count).to eq(3)
  end

  it "does 'undecorate' method for decorator work" do
    @obj = @obj.undecorate
    expect(@obj.price).to eq(10)
  end
end
