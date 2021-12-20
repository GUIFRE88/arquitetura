require 'rails_helper'

RSpec.describe Restaurant do
  it { should have_many(:products) }

  context 'restin total of products' do
    it "returns total of products for a specific restaurant" do
      restaurant = Restaurant.create(name: 'Restaurant 1', address: 'Brasil')
      product1 = Product.create( restaurant: restaurant, name: 'produto1', value: 10)
      product2 = Product.create( restaurant: restaurant, name: 'produto2', value: 10)

      expect(restaurant.total_of_products).to eq 2
    end
  end
end