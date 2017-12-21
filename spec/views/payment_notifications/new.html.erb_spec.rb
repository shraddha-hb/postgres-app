require 'rails_helper'

RSpec.describe "payment_notifications/new", type: :view do
  before(:each) do
    assign(:payment_notification, PaymentNotification.new(
      :params => "MyText",
      :cart_id => 1,
      :status => "MyString",
      :transaction_id => "MyString",
      :create => "MyString"
    ))
  end

  it "renders new payment_notification form" do
    render

    assert_select "form[action=?][method=?]", payment_notifications_path, "post" do

      assert_select "textarea[name=?]", "payment_notification[params]"

      assert_select "input[name=?]", "payment_notification[cart_id]"

      assert_select "input[name=?]", "payment_notification[status]"

      assert_select "input[name=?]", "payment_notification[transaction_id]"

      assert_select "input[name=?]", "payment_notification[create]"
    end
  end
end
