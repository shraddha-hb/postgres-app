require 'rails_helper'

RSpec.describe "PaymentNotifications", type: :request do
  describe "GET /payment_notifications" do
    it "works! (now write some real specs)" do
      get payment_notifications_path
      expect(response).to have_http_status(200)
    end
  end
end
