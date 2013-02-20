class CreateReferrals < ActiveRecord::Migration
  def change
    create_table :referrals do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :linkedin
      t.text :message

      t.timestamps
    end
  end
end
