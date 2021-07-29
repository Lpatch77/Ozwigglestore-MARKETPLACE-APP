require 'rails_helper'

RSpec.describe "products/edit", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      type: "",
      maker: "MyString",
      location: "MyString",
      price: 1.5,
      description: "MyString"
    ))
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(@product), "post" do

      assert_select "input[name=?]", "product[type]"

      assert_select "input[name=?]", "product[maker]"

      assert_select "input[name=?]", "product[location]"

      assert_select "input[name=?]", "product[price]"

      assert_select "input[name=?]", "product[description]"
    end
  end
end
