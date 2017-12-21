require 'rails_helper'

RSpec.describe "payment_notifications/show", type: :view do
  before(:each) do
    @payment_notification = assign(:payment_notification, PaymentNotification.create!(
      :params => "MyText",
      :cart_id => 2,
      :status => "Status",
      :transaction_id => "Transaction",
      :create => "Create"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/Transaction/)
    expect(rendered).to match(/Create/)
  end
end
