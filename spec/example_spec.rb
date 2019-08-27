require 'rspec'
require 'pry'

require './lib/example.rb'

RSpec.describe 'Example App' do
  it 'can say hello' do
    expect(Hello.greet).to eq('hello')
  end
end
