class CreateApplics < ActiveRecord::Migration
  def change
    create_table :applics do |t|
      t.text :message
      t.string :resume_id

      t.timestamps
    end
  end
end
