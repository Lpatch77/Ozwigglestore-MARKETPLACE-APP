require 'rails_helper'

RSpec.describe "products/show", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      type: "Type",
      maker: "Maker",
      location: "Location",
      price: 2.5,
      description: "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/Maker/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/Description/)
  end
end
