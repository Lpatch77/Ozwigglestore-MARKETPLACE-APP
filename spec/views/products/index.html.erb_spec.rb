require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        type: "Type",
        maker: "Maker",
        location: "Location",
        price: 2.5,
        description: "Description"
      ),
      Product.create!(
        type: "Type",
        maker: "Maker",
        location: "Location",
        price: 2.5,
        description: "Description"
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", text: "Type".to_s, count: 2
    assert_select "tr>td", text: "Maker".to_s, count: 2
    assert_select "tr>td", text: "Location".to_s, count: 2
    assert_select "tr>td", text: 2.5.to_s, count: 2
    assert_select "tr>td", text: "Description".to_s, count: 2
  end
end
