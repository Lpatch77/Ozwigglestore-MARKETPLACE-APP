require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      type: "",
      maker: "MyString",
      location: "MyString",
      price: 1.5,
      description: "MyString"
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input[name=?]", "product[type]"

      assert_select "input[name=?]", "product[maker]"

      assert_select "input[name=?]", "product[location]"

      assert_select "input[name=?]", "product[price]"

      assert_select "input[name=?]", "product[description]"
    end
  end
end
