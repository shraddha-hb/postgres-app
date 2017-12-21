require 'rails_helper'

RSpec.describe "payment_notifications/index", type: :view do
  before(:each) do
    assign(:payment_notifications, [
      PaymentNotification.create!(
        :params => "MyText",
        :cart_id => 2,
        :status => "Status",
        :transaction_id => "Transaction",
        :create => "Create"
      ),
      PaymentNotification.create!(
        :params => "MyText",
        :cart_id => 2,
        :status => "Status",
        :transaction_id => "Transaction",
        :create => "Create"
      )
    ])
  end

  it "renders a list of payment_notifications" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Transaction".to_s, :count => 2
    assert_select "tr>td", :text => "Create".to_s, :count => 2
  end
end
