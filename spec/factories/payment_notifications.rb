FactoryBot.define do
  factory :payment_notification do
    params "MyText"
    cart_id 1
    status "MyString"
    transaction_id "MyString"
    create "MyString"
  end
end
