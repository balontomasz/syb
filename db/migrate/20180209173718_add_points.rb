class AddPoints < ActiveRecord::Migration[5.1]
  def change
    create_table :points do |t|
      t.decimal :x
      t.decimal :y

      t.timestamps
    end
  end
end
