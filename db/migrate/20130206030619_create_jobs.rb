class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :location
      t.integer :level
      t.decimal :reward
      t.binary :rewardtype
      t.string :company
      t.text :description
      t.text :skills

      t.timestamps
    end
  end
end
