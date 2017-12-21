require 'rails_helper'

RSpec.describe "payment_notifications/edit", type: :view do
  before(:each) do
    @payment_notification = assign(:payment_notification, PaymentNotification.create!(
      :params => "MyText",
      :cart_id => 1,
      :status => "MyString",
      :transaction_id => "MyString",
      :create => "MyString"
    ))
  end

  it "renders the edit payment_notification form" do
    render

    assert_select "form[action=?][method=?]", payment_notification_path(@payment_notification), "post" do

      assert_select "textarea[name=?]", "payment_notification[params]"

      assert_select "input[name=?]", "payment_notification[cart_id]"

      assert_select "input[name=?]", "payment_notification[status]"

      assert_select "input[name=?]", "payment_notification[transaction_id]"

      assert_select "input[name=?]", "payment_notification[create]"
    end
  end
end
