class AddAvatarsToUsers < ActiveRecord::Migration[5.1]
  def change
  	change_table :users do |t|
      t.attachment :avatar
      t.datetime :date_of_birth
      t.boolean :is_female, default: false
    end
  end
end
