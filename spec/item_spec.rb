require 'rspec'
require 'pry'
require_relative '../lib/item.rb'

RSpec.describe "Item" do
  
  subject do
    Item.new(name: "t-shirt", price: 2.99)
  end
  
  it "should come with a name and price" do
    expect(subject.name).to eq("t-shirt")
    expect(subject.price).to eq(2.99)
  end

end
