require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      :name => "MyString",
      :price => "9.99",
      :description => "MyString",
      :category => 1
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input[name=?]", "product[name]"

      assert_select "input[name=?]", "product[price]"

      assert_select "input[name=?]", "product[description]"

      assert_select "input[name=?]", "product[category]"
    end
  end
end
